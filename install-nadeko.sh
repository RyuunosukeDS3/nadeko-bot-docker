#!/bin/sh

git clone -b v5 --recursive --depth 1 https://gitlab.com/kwoth/nadekobot

root=$(pwd)

cd nadekobot

export DOTNET_CLI_TELEMETRY_OPTOUT=1
dotnet restore -f --no-cache
dotnet build src/NadekoBot/NadekoBot.csproj -c Release -o output/

cd "$root"

exit 0
