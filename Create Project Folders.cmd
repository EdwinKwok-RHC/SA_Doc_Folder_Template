@echo off
setlocal

set ROOT=Lin2Pay
set App1=App_1
REM Top-level folders
mkdir "%ROOT%\01_Project_Charter"
mkdir "%ROOT%\02_BRD"
mkdir "%ROOT%\03_SOW"
mkdir "%ROOT%\04_Technical_Impacts"
mkdir "%ROOT%\05_Status_Reports"

REM Application subfolders
mkdir "%ROOT%\04_Technical_Impacts\%App1%\Design_Changes"
mkdir "%ROOT%\04_Technical_Impacts\%App1%\Integration_Updates"
mkdir "%ROOT%\04_Technical_Impacts\%App1%\Test_Artifacts"

REM Application subfolders
REM mkdir "%ROOT%\04_Technical_Impacts\MSC_Calls\Design_Changes"
REM mkdir "%ROOT%\04_Technical_Impacts\MSC_Calls\Test_Artifacts"

REM Application subfolders
REM mkdir "%ROOT%\04_Technical_Impacts\OnlineBooking\API_Changes"
REM mkdir "%ROOT%\04_Technical_Impacts\OnlineBooking\Deployment_Notes"


REM Add the basic md files
(
echo ^# If the link doesn't open on click, right-click and choose "Open in new tab".
echo.
echo ^|Application^|Version^|CR/ISR #^|Quarters^|Link^|
echo ^|--------^|--------^|--------^|---------^|-----^|
echo ^|~~%App1%~~^|~~V1~~^|~~CR# 123~~^|~~2025-Q2~~^|~~https://your-Github-Repo-Branch~~^|
) > "%ROOT%\_Related_Applications.md"

echo Folder structure created successfully.
Pause
endlocal
