#!/bin/bash
# install-prereq-darwin.sh

echo "Installing dotnet"
# Install Homebrew if not already installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install .NET SDK 8.0
brew install --cask dotnet-sdk

echo "Installing Git, Redis and Tmux..."
brew install git redis tmux

echo "Installing music prerequisites..."
brew install opus libopus libsodium ffmpeg python

# Download yt-dlp for macOS
echo "Downloading yt-dlp for macOS"
curl -L "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_macos" -o /usr/local/bin/yt-dlp
chmod a+rx /usr/local/bin/yt-dlp

echo "NadekoBot Prerequisites Installation completed..."
