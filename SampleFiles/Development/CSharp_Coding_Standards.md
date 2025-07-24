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

