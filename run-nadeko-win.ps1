# run-nadekobot-win.ps1

# Set root directory
$root = Get-Location

# Navigate to the nadekobot directory
Set-Location "$root/nadekobot"

# Run NadekoBot using .NET
Write-Host "Running NadekoBot. Please wait..."
Start-Process "dotnet" "NadekoBot.dll" -NoNewWindow -Wait

# Navigate back to the root directory
Set-Location $root

exit 0
