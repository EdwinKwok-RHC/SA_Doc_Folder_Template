# C# Coding Standards

## 📌 Purpose

This document defines the coding standards for all C# projects in our team, with a focus on .NET Minimal APIs. It ensures consistency, readability, and maintainability across the codebase.

---

## 1. 🔤 Naming Conventions


| Element | Convention | Example |
|----------------------|------------------------|--------------------------------|
| Classes | PascalCase | `OrderService`, `UserProfile` |
| Interfaces | Prefix with `I` | `IRepository`, `ILogger` |
| Methods | PascalCase | `GetUserById()` |
| Variables | camelCase | `userId`, `orderList` |
| Constants | PascalCase | `MaxRetryCount` |
| Enums | PascalCase | `OrderStatus` |
| Async Methods | Suffix with `Async` | `SaveChangesAsync()` |
| Files | Match class name | `UserService.cs` |

---

## 2. 🧱 Project Structure

- One class per file.
- Group related files into folders (e.g., `Models`, `Services`, `Controllers`, `Features`).
- Use vertical slicing for feature-based organization (see `Framework_Guidelines.md`).

---

## 3. 🧼 Code Formatting

- Use 4 spaces for indentation.
- Keep line length under 120 characters.
-  Use `var` when the type is obvious from the right-hand side.
- Use object initializers for readability.

```csharp

var user = new User

{

Id = 1,

Name = "Edwin"

};
- Use expression-bodied members for simple logic only.

```csharp
# regular version
public int Add(int a, int b)
{
    return a + b;
}

# expression-bodied members version
public int Add(int a, int b) => a + b;
```

### Full class non Expression-bodied members version
```csharp

public class Person
{
    public required string FirstName { get; set; }
    public required string LastName { get; set; }

    public string FullName
    {
        get { return $"{FirstName} {LastName}"; }
    }

    public override string ToString()
    {
        return FullName;
    }

    public static bool operator ==(Person? a, Person? b)
    {
        return (a is null && b is null) || (a is not null && b is not null && a.FullName == b.FullName);
    }

    public static bool operator !=(Person? a, Person? b)
    {
        return !(a == b);
    }

    public override bool Equals(object? obj)
    {
        if (obj is Person person)
        {
            return FullName == person.FullName;
        }
        return false;
    }

    public override int GetHashCode()
    {
        return FullName.GetHashCode();
    }
}
```

### Full class Expression-bodied members version
```csharp
public class Person
{
    public required string FirstName { get; set; }
    public required string LastName { get; set; }

    public string FullName => $"{FirstName} {LastName}";

    public override string ToString() => FullName;

    public static bool operator ==(Person? a, Person? b) =>
        (a is null && b is null) || (a is not null && b is not null && a.FullName == b.FullName);

    public static bool operator !=(Person? a, Person? b) => !(a == b);

    public override bool Equals(object? obj) => obj is Person person && FullName == person.FullName;

    public override int GetHashCode() => FullName.GetHashCode();
}
```

----------
## 4. 🧪 Testing Standards

-   Use  **xUnit**  for unit testing.
-   Test method names should follow:  `MethodName_StateUnderTest_ExpectedBehavior`
    --   Example:  `GetUserById_UserExists_ReturnsUser`
-   Use mocking frameworks like  **Moq**  for dependencies.
-   Keep tests isolated and deterministic.

----------
## 5. ⚠️ Error Handling

-   Avoid catching general exceptions (`catch (Exception)`).
-   Use specific exception types.
-   Always log exceptions using  `ILogger<T>`.
-   Never swallow exceptions silently.

----------

## 6. 🧵 Async/Await

-   Use  `async`/`await`  for all I/O-bound operations.
-   Avoid  `async void`  except for event handlers.
-   Always return  `Task`  or  `Task<T>`.

----------

## 7. 🧰 Dependency Injection (DI) Pattern

-   Use constructor injection for all dependencies.
-   Avoid service locator pattern.
-   Register services with appropriate lifetimes (`Scoped`,  `Singleton`,  `Transient`).
-   Prefer interfaces for abstractions.
-   Use  `TryAdd`  methods to avoid duplicate registrations.

----------

## 8. 🧹 Clean Code Practices

-   Keep methods short and focused (ideally under 30 lines).
-   Avoid magic strings and numbers—use constants or enums.
-   Prefer composition over inheritance.
-   Use meaningful names—avoid abbreviations.

----------

## 9. 🪵 Logging

-   Use structured logging with  `ILogger<T>`.
-   Avoid logging sensitive data.
-   Use log levels appropriately:  `Information`,  `Warning`,  `Error`,  `Critical`.

----------

## 10. 🧯 Nullability & Defensive Coding

-   Enable nullable reference types (`<Nullable>enable</Nullable>`  in  `.csproj`).
-   Use null-coalescing (`??`) and null-conditional (`?.`) operators.
-   Validate method arguments with  `ArgumentNullException.ThrowIfNull()`.

----------

## 11. 🧪 Code Reviews

-   All code must go through peer review.
-   Reviewers should check for:
    -   Adherence to this standard
    -   Readability and maintainability
    -   Test coverage
    -   Security and performance concerns

----------

## 12. 🗂 Feature Folders

Organize code by feature, not by layer. Each feature folder should contain:

```
/Features/Orders/Create
    ├── CreateOrderRequest.cs
    ├── CreateOrderEndpoint.cs
    ├── CreateOrderResponse.cs
    ├── CreateOrderValidator.cs
    ├── CreateOrderHandler.cs

```

Benefits:

-   Improves modularity and discoverability.
-   Reduces cross-feature coupling.
-   Aligns with vertical slicing and REPR pattern.

----------

## 13. 🔁 REPR Pattern (Request-Endpoint-Response)

Use the REPR pattern to structure endpoints:

-   **Request**: DTO representing input data.
-   **Endpoint**: Defines route, DI, and orchestration logic.
-   **Response**: DTO representing output data.
 ```csharp
public class CreateOrderRequest
{
	public string ProductId { get; set; }
	public int Quantity { get; set; }
}

public class CreateOrderResponse
{
	public Guid OrderId { get; set; }
	public string Status { get; set; }
}
 ```

- Use FastEndpoints to wire them together cleanly.
### 🚦 Response Handling Guidelines

-   **Only the Endpoint layer is allowed to return HTTP responses**  (e.g.,  `NotFound`,  `BadRequest`,  `Created`, etc.).
-   **Services and Repositories must never return HTTP-specific types**  like  `IResult`,  `ActionResult`, or  `HttpResponseMessage`.
-   Instead, services should return:
    -   Domain models
    -   Result objects (e.g.,  `Result<T>`,  `OperationOutcome`)
    -   Exceptions (to be caught and translated at the endpoint level)

**✅ Correct:**
```csharp
// In Endpoint
if (!result.IsSuccess)
return Results.BadRequest(result.ErrorMessage);
```
---
**❌ Incorrect:**
```csharp
// In Service
return Results.BadRequest("Invalid order"); // ❌ Do not do this
```
---
This separation ensures:
-   Clear layering and testability
-   Framework-agnostic service and repository layers
-   Centralized response formatting and error handling


----------

## 14. 🗃 Repository Pattern

-   Define interfaces for data access logic.
-   Implement repositories per aggregate root.
-   Avoid leaking EF Core-specific types outside repository.
-   Use Unit of Work if multiple repositories need coordination.

----------

## 15. 📎 Tools & Analyzers

-   Use Roslyn analyzers and StyleCop for static analysis.
-   Enable warnings as errors in CI builds.
-   Use  `dotnet format`  or IDE formatting tools before committing.

----------

## 16. 📚 References

-   https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions
-   https://learn.microsoft.com/en-us/aspnet/core/fundamentals/minimal-apis
-   https://fast-endpoints.com/docs