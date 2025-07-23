@echo off
setlocal

REM Root directory
set ROOT=Application

REM Architecture
mkdir "%ROOT%\01_Architecture\HighLevel_Architecture"
mkdir "%ROOT%\01_Architecture\Solution_Architecture"
mkdir "%ROOT%\01_Architecture\System_Context_Diagrams"
mkdir "%ROOT%\01_Architecture\Component_Diagrams"
mkdir "%ROOT%\01_Architecture\Deployment_Diagrams"
mkdir "%ROOT%\01_Architecture\Integration_Architecture"

REM Design
mkdir "%ROOT%\02_Design\UI_UX_Designs"
mkdir "%ROOT%\02_Design\Database_Designs"
mkdir "%ROOT%\02_Design\API_Specifications"
mkdir "%ROOT%\02_Design\Sequence_Diagrams"
mkdir "%ROOT%\02_Design\Class_Diagrams"
mkdir "%ROOT%\02_Design\Design_Decisions"

REM Development
mkdir "%ROOT%\03_Development\Coding_Standards"
mkdir "%ROOT%\03_Development\Framework_Guidelines"
mkdir "%ROOT%\03_Development\Naming_Conventions"
mkdir "%ROOT%\03_Development\Code_Snippets"
mkdir "%ROOT%\03_Development\DevOps_Pipelines"

REM Requirements
mkdir "%ROOT%\04_Requirements\Business_Requirements"
mkdir "%ROOT%\04_Requirements\Functional_Requirements"
mkdir "%ROOT%\04_Requirements\NonFunctional_Requirements"
mkdir "%ROOT%\04_Requirements\Use_Cases"
mkdir "%ROOT%\04_Requirements\User_Stories"

REM Testing
mkdir "%ROOT%\05_Testing\Test_Plans"
mkdir "%ROOT%\05_Testing\Test_Cases"
mkdir "%ROOT%\05_Testing\Test_Reports"
mkdir "%ROOT%\05_Testing\Automation_Scripts"
mkdir "%ROOT%\05_Testing\Performance_Testing"

REM Deployment
mkdir "%ROOT%\06_Deployment\Deployment_Guides"
mkdir "%ROOT%\06_Deployment\Environment_Details"
mkdir "%ROOT%\06_Deployment\Release_Notes"
mkdir "%ROOT%\06_Deployment\Rollback_Plans"

REM Security
mkdir "%ROOT%\07_Security\Threat_Modeling"
mkdir "%ROOT%\07_Security\Security_Standards"
mkdir "%ROOT%\07_Security\Vulnerability_Assessments"
mkdir "%ROOT%\07_Security\Penetration_Test_Reports"

REM Operations
mkdir "%ROOT%\08_Operations\Monitoring_Guides"
mkdir "%ROOT%\08_Operations\Logging_Strategies"
mkdir "%ROOT%\08_Operations\Incident_Management"
mkdir "%ROOT%\08_Operations\Backup_Recovery"

REM Change Management
mkdir "%ROOT%\09_Change_Management\Change_Requests"
mkdir "%ROOT%\09_Change_Management\Impact_Assessments"
mkdir "%ROOT%\09_Change_Management\Approval_Records"

REM Reference
mkdir "%ROOT%\10_Reference\Glossary"
mkdir "%ROOT%\10_Reference\Acronyms"
mkdir "%ROOT%\10_Reference\External_Links"
mkdir "%ROOT%\10_Reference\Tooling_Documentation"

REM Archive
mkdir "%ROOT%\Archive"

REM Add _Version_History.md files
(
echo ^# If the link doesn't open on click, right-click and choose "Open in new tab". 
echo.
echo ^|Version^|CR/ISR #^|Quarters^|Repo.Branch^|  
echo ^|-------^|--------^|---------^|---------^|
echo ^|~~2025.07.02~~^|~~CR# 123~~^|~~2025-Q2~~^|~~https://Github-Repo-Branch~~^|
)> "%ROOT%\_Version_History.md"

REM Add _Related_Projects.md files
(
echo ^# If the link doesn't open on click, right-click and choose "Open in new tab".
echo.
echo ^|Start Date^|End Date^|Project^|Link^|
echo ^|--------^|--------^|---------^|-----^|
echo ^|~~2025-07~~^|~~2025-12~~^|~~EComm 2025~~^|~~https://SharePoint-Project-Folder~~^|
) > "%ROOT%\_Related_Projects.md"

REM Prefix the 2 files with _ so that they will be on the top of all other files

echo Folder structure created successfully.
pause
endlocal
