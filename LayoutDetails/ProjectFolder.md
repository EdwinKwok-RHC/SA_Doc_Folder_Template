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
│   ├──...   
│
│   ├── Projects/
│        └── SAP_Update/
|            ├── 01_Project_Charter/         ← Project scope, objectives, stakeholders, governance
|            ├── 02_BRD/                     ← Business requirements, process maps, gap analysis
|            ├── 03_SOW/                     ← Deliverables, timelines, resource plans, contracts
|            ├── 04_Technical_Impacts/       ← App-specific technical changes driven by the project
|            │   ├── App_1/                    ← Technical changes related to the OAB application
|            │   │   ├── Design_Changes/         ← Updated architecture, UI, or logic designs
|            │   │   ├── Integration_Updates/    ← API changes, data flows, third-party integrations
|            │   │   └── Test_Artifacts/         ← Test cases, test data, and results for OAB
|            │   ├── App_2/             ← Technical changes related to the MSC_Calls application
|            │   │   ├── Design_Changes/         ← UI or logic updates specific to MSC_Calls
|            │   │   └── Test_Artifacts/         ← Regression or functional test results
|            │   └── App_3/         ← Technical changes related to OnlineBooking application
|            │       ├── API_Changes/           ← New or modified API specifications
|            │       └── Deployment_Notes/      ← Environment-specific deployment instructions
|            ├──  05_Status_Reports/         ← Weekly updates, RAID logs, meeting minutes, change logs
|            └──  _Related_Applications.md   ← 
    
```

# Folder Functions and example files

 ### **📁 `01_Project_Charter/`**

> Purpose: Defines the project's scope, objectives, stakeholders, and governance.
> 

**Contents:**

- `Project_Charter.docx` – High-level summary of the project
- `Project_Scope_Statement.docx`
- `Stakeholder_List.xlsx`
- `Project_Governance_Model.md`
- `Project_Timeline_Gantt.pdf`

---

### **📁 `02_BRD/` (Business Requirements Document)**

> Purpose: Captures business needs and expected outcomes.
> 

**Contents:**

- `BRD_Main.docx` – Core business requirements
- `Business_Process_Maps/` – Visual workflows (e.g., BPMN diagrams)
- `Stakeholder_Interviews/` – Notes or transcripts
- `Gap_Analysis.xlsx` – Current vs. future state

---

### **📁 `03_SOW/` (Statement of Work)**

> Purpose: Defines deliverables, timelines, and responsibilities.
> 

**Contents:**

- `SOW_Main.docx`
- `Milestones_and_Deliverables.xlsx`
- `Resource_Plan.xlsx`
- `Acceptance_Criteria.md`
- `Vendor_Contracts/` – If third parties are involved

---

### **📁 `04_Technical_Impacts/`**

> Purpose: Captures how each application is impacted by the project.
> 

---

### **📁 `App1/`**

> For all technical changes related to App1.
> 
- **`Design_Changes/`***Updated architecture, UI, or logic designs.*Example: `OAB_SSO_Design_Update.pdf`
- **`Integration_Updates/`***Changes to APIs, data flows, or third-party integrations.*Example: `OAB_to_SAP_API_Update.yaml`
- **`Test_Artifacts/`***Test cases, test data, and results specific to OAB.*Example: `OAB_SAP_Integration_TestCases.xlsx`

---

### **📁 `App2/`**

> For all technical changes related to App2.
> 
- **`Design_Changes/`**Example: `MSC_UI_Enhancement_Design.docx`
- **`Test_Artifacts/`**Example: `MSC_Regression_Test_Results.pdf`

---

### **📁 `App3/`**

> For all technical changes related to App3.
> 
- **`API_Changes/`***New or modified API specs.*Example: `OnlineBooking_AppointmentAPI_v2.yaml`
- **`Deployment_Notes/`***Environment-specific deployment instructions.*Example: `OnlineBooking_Prod_Deployment_Steps.md`

---

### **📁 `05_Status_Reports/`**

> Purpose: Tracks project progress, risks, and decisions.
> 

**Contents:**

- `Weekly_Status_Reports/` – One file per week
- `RAID_Log.xlsx` – Risks, Assumptions, Issues, Dependencies
- `Meeting_Minutes/` – Steering committee or stakeholder meetings
- `Change_Log.md` – Summary of scope or timeline changes   
