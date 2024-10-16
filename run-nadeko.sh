#!/bin/sh

root=$(pwd)

cd "$root/nadekobot"
echo "Running NadekoBot. Please wait."
dotnet NadekoBot.dll

