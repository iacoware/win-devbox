# Copy and paste in IE
# http://boxstarter.org/package/url?https://raw.githubusercontent.com/iacoware/win-devbox/master/setup.ps1

$Boxstarter.RebootOk=$true      # Allow reboots?
$Boxstarter.NoPassword=$true    # Is this a machine with no login password?
#$Boxstarter.AutoLogin=$true     # Save my password securely and auto-login after a reboot

Update-ExecutionPolicy RemoteSigned
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions -EnableShowFullPathInTitleBar
#Enable-RemoteDesktop

# Dev Tools
cinst conemu
#cinst powershell
#cinst GitHub
cinst git --params="/GitAndUnixToolsOnPath"
cinst git-credential-winstore
cinst poshgit
cinst tortoisegit

cinst nuget.commandline
cinst nugetpackageexplorer

#cinst cshell
cinst scriptcs
#cinst linqpad
cinst sublimetext3
cinst install sublimetext3.packagecontrol

#choco install fiddler4
choco install 7zip
cinst autohotkey

# Productivity
choco install GoogleChrome
cinst lastpass

# IIS Server
#cinst webpi
#cinst -source windowsfeatures IIS-WebServerRole IIS-WebServer
#cinst -source windowsfeatures IIS-HttpTracing IIS-HealthAndDiagnostics
#cinst -source windowsfeatures IIS-ApplicationDevelopment IIS-DefaultDocument IIS-CommonHttpFeatures IIS-RequestFiltering IIS-Security
#cinst -source windowsfeatures IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility
#cinst -source windowsfeatures IIS-ASPNET

#$aspnet_regiis = Join-path -Path $env:WinDir -ChildPath Microsoft.NET\Framework\v4.0.30319\aspnet_regiis.exe
#& $aspnet_regiis -I

# Windows Updates
#Install-WindowsUpdate -AcceptEula

# Taskbar items
#Install-ChocolateyPinnedTaskBarItem "$env:localappdata\Google\Chrome\Application\chrome.exe"
#Install-ChocolateyPinnedTaskBarItem "$env:windir\explorer.exe"
#Install-ChocolateyPinnedTaskBarItem "$env:SystemRoot\system32\WindowsPowerShell\v1.0\powershell.exe"

# VSIS Packages
cinst resharper -version 9.2.0.0
Install-ChocolateyVsixPackage TrailingWhitespaceVisualizer https://visualstudiogallery.msdn.microsoft.com/a204e29b-1778-4dae-affd-209bea658a59/file/135653/13/TrailingWhitespace.vsix
Install-ChocolateyVsixPackage WebEssentials2015 https://visualstudiogallery.msdn.microsoft.com/ee6e6d8c-c837-41fb-886a-6b50ae2d06a2/file/146119/32/Web%20Essentials%202015%20v0.5.197.vsix
Install-ChocolateyVsixPackage AddNewFile https://visualstudiogallery.msdn.microsoft.com/3f820e99-6c0d-41db-aa74-a18d9623b1f3/file/140782/17/Add%20New%20File%20v2.1.39.vsix
Install-ChocolateyVsixPackage OpenCommandLine https://visualstudiogallery.msdn.microsoft.com/4e84e2cf-2d6b-472a-b1e2-b84932511379/file/151803/12/Open%20Command%20Line%20v1.7.121.vsix

# Install chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

#Autologon
# type WIN+R -> netplwiz
# because this doesn't work
#$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
#Set-ItemProperty $RegPath "AutoAdminLogon" -Value "1" -type String
#Set-ItemProperty $RegPath "DefaultUsername" -Value "max" -type String
#Set-ItemProperty $RegPath "DefaultPassword" -Value "max" -type String

# Filesystem
#New-Item -Path C:\ -Name Temp -ItemType Directory