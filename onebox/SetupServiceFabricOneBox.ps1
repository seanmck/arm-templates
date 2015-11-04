Param(
   [string]$Username,
   [string]$Password
   )

# Install SDK

$User = '\' + $Username
$PWord = ConvertTo-SecureString –String $Password –AsPlainText -Force

$Credential = New-Object –TypeName System.Management.Automation.PSCredential –ArgumentList $User, $PWord

# Intentionally not using the user, password passed in since it doesnt work

Start-Process 'C:\Program Files\Microsoft\Web Platform Installer\WebpiCmd-x64.exe' -ArgumentList "/Install /XML:http://aka.ms/servicefabricinternallkg /Products:'MicrosoftAzure-ServiceFabric-InternalLKG-Develop' /AcceptEULA /Log:D:\log.txt" -NoNewWindow -Wait

# Set up local cluster

& 'C:\Program Files\Microsoft SDKs\Service Fabric\ClusterSetup\DevClusterSetup.ps1' | Out-File C:\setuplog.txt
