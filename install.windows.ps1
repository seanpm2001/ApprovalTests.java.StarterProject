# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/approvals/ApprovalTests.java.StarterProject/master/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


#install chocolatey
iwr -useb cin.st | iex
Set-Service Audiosrv -StartupType Automatic

#install common tools
choco install -y vscode win-no-annoy git github-desktop anydesk.install googlechrome
start-process https://github.com/GreatWebGuy/MobTime/releases

#install project specific tools 
choco install -y notepadplusplus beyondcompare jdk8 intellijidea maven

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/approvals/ApprovalTests.java.StarterProject.git C:\Code\ApprovalTests.java.StarterProject


#Set desktop background image
 set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value c:\Code\TestingLegacyCodeCourse.cpp\Resources\desktop_background_dark.png
 RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

# Done
cls
echo "Done!"