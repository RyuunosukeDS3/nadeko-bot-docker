# install-nadekobot-win.ps1

# Set root directory
$root = Get-Location

$targetPlatform = $env:TARGETPLATFORM -replace 'amd64', 'x64' -replace '/', '-'

# Create nadekobot directory and navigate to it
Write-Host "Creating nadekobot directory"
New-Item -ItemType Directory -Name "nadekobot" -Force
Set-Location "nadekobot"

# Download NadekoBot build
$downloadUrl = "https://gitlab.com/api/v4/projects/9321079/packages/generic/NadekoBot-build/$env:VERSION/$env:VERSION-$targetPlatform-build.zip"
Write-Host "Downloading NadekoBot build for $targetPlatform"
Invoke-WebRequest -Uri $downloadUrl -OutFile "nadeko-build.zip"

# Extract the downloaded zip file (requires Expand-Archive cmdlet)
Write-Host "Extracting NadekoBot build"
Expand-Archive -Path "nadeko-build.zip" -DestinationPath "." -Force

# Navigate back to the root directory
Set-Location $root

exit 0
