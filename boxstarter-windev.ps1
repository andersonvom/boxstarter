Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TaskbarOptions -Size Small -Combine Full
Disable-GameBarTips
Disable-BingSearch

cinst chocolatey

# Misc Tools
cinst jdk8
choco install git.install -y --allowEmptyChecksum
cinst git-credential-winstore
choco install gittfs -y --allowEmptyChecksum
cinst notepadplusplus
choco install vim -y --allowEmptyChecksum
cinst nodist
cinst yarn
cinst ConEmu
cinst firefox
cinst googlechrome
cinst screenhero

# Microsoft Tools
cinst visualstudiocode
cinst visualstudio2015professional
if (Test-PendingReboot) { Invoke-Reboot }

Install-WindowsUpdate -AcceptEula

# cinst dotnet4.5.1
# cinst aspnetmvc4.install
# cinst mssqlservermanagementstudio2014express
# cinst resharper
# cinst stylecop

# cinst IIS-WebServerRole -source windowsfeatures

# Enable Developer Mode & Install Bash
# reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
# Microsoft-Windows-Subsystem-Linux doesn't seem to be working =(
# Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-Subsystem-Linux" -All -NoRestart
# Enable-WindowsOptionalFeature -Online -FeatureName "TelnetClient" -All -NoRestart
# Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All -NoRestart
