# Folder Structure

```plaintext
Documentaion_Root
├── Shared/
│   ├── Standards/               ← Coding, naming, logging, security standards
│   ├── Templates/               ← Document templates (design, test plans, etc.)
│   ├── Tools/                   ← Shared scripts, utilities, DevOps tools
│   └── Governance/              ← Architecture review process, decision logs
│
├── Application_1/
│   ├── 01_Architecture/         ← System-level and solution architecture views
│   │   ├── HighLevel_Architecture/     ← Overview diagrams of system boundaries
│   │   ├── Solution_Architecture/      ← Detailed solution design and flows
│   │   ├── System_Context_Diagrams/   ← External systems and user interactions
│   │   ├── Component_Diagrams/        ← Internal modules and their relationships
│   │   ├── Deployment_Diagrams/       ← Infrastructure and hosting layout
│   │   └── Integration_Architecture/  ← Interfaces and data exchange mechanisms
│   │
│   ├── 02_Design/              ← Detailed design artifacts and rationale
│   │   ├── UI_UX_Designs/              ← Wireframes, mockups, and user flows
│   │   ├── Database_Designs/           ← ERDs, schemas, and DB structures
│   │   ├── API_Specifications/        ← Swagger/OpenAPI specs and contracts
│   │   ├── Sequence_Diagrams/         ← Interaction flows between components
│   │   ├── Class_Diagrams/            ← Object models and domain logic
│   │   └── Design_Decisions/          ← Architecture/design decision records
│   │
│   ├── 03_Development/         ← Dev standards, reusable code, and pipelines
│   │   ├── Coding_Standards/           ← Language-specific coding rules
│   │   ├── Framework_Guidelines/      ← Usage of internal frameworks/libraries
│   │   ├── Naming_Conventions/        ← File, variable, and API naming rules
│   │   ├── Code_Snippets/             ← Reusable code blocks and helpers
│   │   └── DevOps_Pipelines/          ← CI/CD pipeline definitions and scripts
│   │
│   ├── 04_Requirements/        ← Business and system requirements
│   │   ├── Business_Requirements/     ← High-level goals and stakeholder needs
│   │   ├── Functional_Requirements/   ← Features and expected behaviors
│   │   ├── NonFunctional_Requirements/← Performance, security, scalability
│   │   ├── Use_Cases/                 ← User interactions and system responses
│   │   └── User_Stories/              ← Agile stories with acceptance criteria
│   │
│   ├── 05_Testing/             ← Test plans, cases, results, and automation
│   │   ├── Test_Plans/                ← Overall testing strategy and scope
│   │   ├── Test_Cases/                ← Detailed test scenarios and steps
│   │   ├── Test_Reports/              ← Execution results and defect logs
│   │   ├── Automation_Scripts/        ← Automated test scripts and tools
│   │   └── Performance_Testing/       ← Load testing plans and results
│   │
│   ├── 06_Deployment/          ← Deployment and release documentation
│   │   ├── Deployment_Guides/         ← Step-by-step deployment instructions
│   │   ├── Environment_Details/       ← Configs, URLs, and environment info
│   │   ├── Release_Notes/             ← Summary of changes per release
│   │   └── Rollback_Plans/            ← Procedures to revert deployments
│   │
│   ├── 07_Security/            ← Security posture and assessments
│   │   ├── Threat_Modeling/           ← Threat analysis and mitigation plans
│   │   ├── Security_Standards/        ← Authentication, encryption, access control
│   │   ├── Vulnerability_Assessments/ ← Scan results and remediation plans
│   │   └── Penetration_Test_Reports/  ← Internal/external pen test results
│   │
│   ├── 08_Operations/          ← Operational support and monitoring
│   │   ├── Monitoring_Guides/         ← Health checks, alerts, dashboards
│   │   ├── Logging_Strategies/        ← Log formats, retention, and analysis
│   │   ├── Incident_Management/       ← Runbooks for outages and issues
│   │   └── Backup_Recovery/           ← Backup schedules and recovery steps
│   │
│   ├── 09_Change_Management/   ← Change tracking and approvals
│   │   ├── Change_Requests/           ← Formal change request documents
│   │   ├── Impact_Assessments/        ← Analysis of change effects
│   │   └── Approval_Records/          ← Sign-offs and CAB approvals
│   │
│   └── 10_Reference/           ← Supporting materials and external links
│   │   ├── Glossary/                  ← Definitions of domain-specific terms
│   │   ├── Acronyms/                  ← List of acronyms used in the app
│   │   ├── External_Links/            ← URLs to vendor docs, APIs, etc.
│   │   └── Tooling_Documentation/     ← Docs for tools used in the app
│   │
│   ├── Archive/    ← retired apps or completed projects
│   │   ├── v1.0/                  
│   │   ├── ISR_12345/                  ← Align the branch name with ISR #
│   │   ├── CR_12345/                   ← Align the branch name with CR #
│   │   └── ...
│   |
│   ├── Version_History.md          ← NEW: Summary of changes per version
│   └── impacted_by_projects.md     ← NEW: List of projects that modified OAB
```

# Folder Functions and example files

### **📁 `01_Architecture/`**

> Purpose: Captures all architectural views and models of the application.
> 
- **HighLevel_Architecture/***Overview diagrams showing major components, data flow, and system boundaries.Example: `OAB_HighLevel_Architecture_v3.0.drawio`*
- **Solution_Architecture/***Detailed solution design aligned with enterprise architecture standards.Example: `OAB_Solution_Architecture_SAP_Integration.pdf`*
- **System_Context_Diagrams/***Diagrams showing how the app interacts with external systems/users.Example: `OAB_Context_Diagram_v2.1.png`*
- **Component_Diagrams/***Breakdown of internal components/modules and their relationships.Example: `OAB_Component_Model_v3.2.uml`*
- **Deployment_Diagrams/***Infrastructure and hosting layout (on-prem, cloud, hybrid).Example: `OAB_Azure_Deployment_2025.bpmn`*
- **Integration_Architecture/***Interfaces, APIs, and data exchange mechanisms with other systems.Example: `OAB_to_SAP_Integration_Design.md`*
    
    ---
    

### **📁 `02_Design/`**

> Purpose: Captures detailed design artifacts and decisions.
> 
- **UI_UX_Designs/***Wireframes, mockups, and user flow diagrams.Example: `OAB_UI_Wireframes_FrontDesk.pdf`*
- **Database_Designs/***ERDs, schema definitions, and indexing strategies.Example: `OAB_DB_Schema_v3.1.sql`*
- **API_Specifications/***OpenAPI/Swagger specs, request/response models.Example: `OAB_AppointmentAPI_Spec.yaml`*
- **Sequence_Diagrams/***Interaction flows between components or systems.Example: `OAB_BookingFlow_Sequence.drawio`*
- **Class_Diagrams/***Object-oriented models for core business logic.Example: `OAB_DomainModel_Classes.uml`*
- **Design_Decisions/***ADR (Architecture Decision Records) or rationale for key choices.Example: `ADR-003-Use-Azure-Functions.md`*

---

### **📁 `03_Development/`**

> Purpose: Development standards, reusable code, and pipelines.
> 
- **Coding_Standards/***Language-specific guidelines (e.g., C#, JavaScript).Example: `CSharp_Coding_Standards.md`*
- **Framework_Guidelines/***How to use internal frameworks or libraries.Example: `OAB_MVC_Framework_Guide.pdf`*
- **Naming_Conventions/***Standards for naming files, variables, APIs, etc.Example: `OAB_Naming_Conventions.md`*
- **Code_Snippets/***Reusable code blocks or patterns.Example: `LoggingMiddleware.cs`*
- **DevOps_Pipelines/***CI/CD pipeline definitions and YAML files.Example: `azure-pipelines-oab.yml`*

---

### **📁 `04_Requirements/`**

> Purpose: Captures business and system requirements.
> 
- **Business_Requirements/***High-level goals, business rules, and stakeholder needs.Example: `OAB_Business_Requirements_v1.0.docx`*
- **Functional_Requirements/***Detailed features and expected behaviors.Example: `OAB_Functional_Requirements.xlsx`*
- **NonFunctional_Requirements/***Performance, scalability, availability, etc.Example: `OAB_NFRs_Security_Performance.md`*
- **Use_Cases/***User interactions and system responses.Example: `OAB_UseCase_CheckIn.md`*
- **User_Stories/***Agile stories with acceptance criteria.Example: `US-1023-BookAppointment.feature`*

---

### **📁 `05_Testing/`**

> Purpose: All testing-related documentation and assets.
> 
- **Test_Plans/***Overall testing strategy and scope.Example: `OAB_TestPlan_v3.0.docx`*
- **Test_Cases/***Detailed test scenarios and expected results.Example: `OAB_TestCases_RegressionSuite.xlsx`*
- **Test_Reports/***Execution results, defect summaries.Example: `OAB_TestReport_Sprint12.pdf`*
- **Automation_Scripts/***Selenium, Postman, or xUnit test scripts.Example: `OAB_API_Tests.postman_collection.json`*
- **Performance_Testing/***Load test plans, JMeter scripts, results.Example: `OAB_LoadTest_Results_2025.csv`*

---

### **📁 `06_Deployment/`**

> Purpose: Guides and artifacts for deploying the application.
> 
- **Deployment_Guides/***Step-by-step deployment instructions.Example: `OAB_Prod_Deployment_Guide.md`*
- **Environment_Details/***Config settings, URLs, credentials (secured).Example: `OAB_Dev_Env_Config.json`*
- **Release_Notes/***What’s new, fixed, or changed in each release.Example: `ReleaseNotes_v3.2.md`*
- **Rollback_Plans/***Steps to revert to a previous version.Example: `OAB_Rollback_v3.1_to_v3.0.docx`*

---

### **📁 `07_Security/`**

> Purpose: Security posture, assessments, and compliance.
> 
- **Threat_Modeling/***Diagrams and analysis of potential threats.Example: `OAB_Threat_Modeling_MITRE.pdf`*
- **Security_Standards/***Encryption, authentication, and access control policies.Example: `OAB_Security_Standards.md`*
- **Vulnerability_Assessments/***Scan results and remediation plans.Example: `OAB_VulnScan_Q2_2025.pdf`*
- **Penetration_Test_Reports/***External/internal pen test results.Example: `OAB_PenTest_Report_2025.docx`*

---

### **📁 `08_Operations/`**

> Purpose: Day-to-day operational support documentation.
> 
- **Monitoring_Guides/***How to monitor app health and alerts.Example: `OAB_Monitoring_AzureAppInsights.md`*
- **Logging_Strategies/***Log formats, retention, and analysis.Example: `OAB_Logging_Strategy.md`*
- **Incident_Management/***Runbooks for handling outages or issues.Example: `OAB_Incident_Response_Playbook.pdf`*
- **Backup_Recovery/***Backup schedules and recovery procedures.Example: `OAB_Backup_Recovery_Guide.docx`*

---

### **📁 `09_Change_Management/`**

> Purpose: Tracks changes, approvals, and impact assessments.
> 
- **Change_Requests/***Formal change request forms.Example: `CR-2025-014-OAB-SSO-Update.docx`*
- **Impact_Assessments/***Analysis of how changes affect systems/users.Example: `OAB_SAP_Integration_Impact.md`*
- **Approval_Records/***Sign-offs from stakeholders or CAB.Example: `OAB_Change_Approval_Signoff.pdf`*

---

### **📁 `10_Reference/`**

> Purpose: Supporting materials and external references.
> 
- **Glossary/***Definitions of domain-specific terms.Example: `OAB_Glossary.md`*
- **Acronyms/***List of acronyms used in documentation.Example: `OAB_Acronyms_List.xlsx`*
- **External_Links/***Links to vendor docs, APIs, or standards.Example: `OAB_External_References.md`*
- **Tooling_Documentation/***Docs for tools used in the app (e.g., Swagger, Terraform).Example: `OAB_Terraform_Setup_Guide.md`*
