Param(
   [string]$Username
   )

# Add link to docs to desktop

$Path = 'C:\users\' + $Username + '\Desktop\'

$WshShell = New-Object -comObject WScript.Shell
$sfdocpath = $Path + 'Service Fabric Documentation.lnk'
$Shortcut = $WshShell.CreateShortcut($sfdocpath)
$Shortcut.TargetPath = "http://aka.ms/servicefabricdocs"
$Shortcut.IconLocation = "C:\Windows\System32\url.dll"

$Shortcut.Save()

# Add link to samples to desktop

$WshShell = New-Object -comObject WScript.Shell
$sfsamplespath = $Path + 'Service Fabric Samples.lnk'
$Shortcut = $WshShell.CreateShortcut($sfsamplespath)
$Shortcut.TargetPath = "http://aka.ms/servicefabricsamples"
$Shortcut.IconLocation = "C:\Windows\System32\url.dll"

$Shortcut.Save()

# Add shortcut to Service Fabric Explorer to desktop

$WshShell = New-Object -comObject WScript.Shell
$sfexplorerspath = $Path + 'Service Fabric Explorer.lnk'
$Shortcut = $WshShell.CreateShortcut($sfexplorerspath)
$Shortcut.TargetPath = 'C:\Program Files\Microsoft SDKs\Service Fabric\Tools\ServiceFabricExplorer\ServiceFabricExplorer.exe'
$Shortcut.IconLocation = 'C:\Program Files\Microsoft SDKs\Service Fabric\Tools\ServiceFabricExplorer\ServiceFabricExplorer.exe'

$Shortcut.Save()