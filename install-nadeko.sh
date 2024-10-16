#!/bin/sh

git clone -b v5 --recursive --depth 1 https://gitlab.com/kwoth/nadekobot

root=$(pwd)

cd nadekobot

export DOTNET_CLI_TELEMETRY_OPTOUT=1
dotnet restore -f --no-cache
dotnet publish -r $(echo ${TARGETPLATFORM} | sed 's/amd64/x64/' | sed 's/\//-/g') -c Release -o output/ src/NadekoBot/NadekoBot.csproj 

cd "$root"

exit 0
