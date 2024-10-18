#!/bin/bash

apt-get update && apt-get install -y apt-transport-https && apt-get update;

echo "Installing Git, Redis and Tmux..."
apt-get install git tmux -y

echo "Installing music prerequisites..."
apt-get install libopus0 opus-tools libopus-dev libsodium-dev python3 ffmpeg -y
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
chmod a+rx /usr/local/bin/yt-dlp

echo "NadekoBot Prerequisites Installation completed..."
