#!/bin/sh

root=$(pwd)

cd "$root/nadekobot/output"
echo "Running NadekoBot. Please wait."
dotnet NadekoBot.dll

