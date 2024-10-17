# PowerShell Script for Windows

Write-Host "Installing .NET SDK"
# Download and install .NET SDK 8.0 for Windows
$dotnetInstallerUrl = "https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-8.0.100-windows-x64-installer"
Invoke-WebRequest -Uri $dotnetInstallerUrl -OutFile "dotnet-sdk-8.0-installer.exe"
Start-Process -Wait -FilePath "dotnet-sdk-8.0-installer.exe" -ArgumentList "/quiet", "/norestart"

# Install Git
Write-Host "Installing Git"
Start-Process -Wait -FilePath "winget" -ArgumentList "install", "--id", "Git.Git", "-e", "--source", "winget"

# Install Redis using Chocolatey (requires Chocolatey to be installed)
Write-Host "Installing Redis"
Start-Process -Wait -FilePath "choco" -ArgumentList "install", "redis-64", "-y"

# Install Tmux (Windows doesn't natively support tmux, using Windows Subsystem for Linux is recommended)
Write-Host "Installing Tmux"
Start-Process -Wait -FilePath "choco" -ArgumentList "install", "tmux", "-y"

# Install music prerequisites
Write-Host "Installing music prerequisites"
Start-Process -Wait -FilePath "winget" -ArgumentList "install", "--id", "FFmpeg.FFmpeg", "-e", "--source", "winget"

# Download yt-dlp for Windows
Write-Host "Downloading yt-dlp for Windows"
Invoke-WebRequest -Uri "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe" -OutFile "C:\Program Files\yt-dlp.exe"

Write-Host "NadekoBot Prerequisites Installation completed"
