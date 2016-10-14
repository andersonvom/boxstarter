Disable-UAC

# Enable Developer Mode & Install Bash
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
# Microsoft-Windows-Subsystem-Linux doesn't seem to be working =(
# Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All -NoRestart

Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TaskbarOptions -Size Small -Combine Full
Enable-RemoteDesktop
Disable-GameBarTips
Disable-BingSearch

# Misc Tools
cinst cygwin
cinst jdk8
cinst fiddler4
cinst git.install
cinst git-credential-winstore
cinst poshgit
cinst gittfs

# Microsoft Tools
cinst dotnet4.5.1
cinst aspnetmvc4.install
cinst visualstudio2015professional
cinst mssqlservermanagementstudio2014express
cinst resharper

cinst IIS-WebServerRole -source windowsfeatures
Install-WindowsUpdate -AcceptEula