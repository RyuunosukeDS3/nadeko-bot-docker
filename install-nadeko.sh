#!/bin/sh

root=$(pwd)

mkdir nadekobot
cd nadekobot
wget https://gitlab.com/api/v4/projects/9321079/packages/generic/NadekoBot-build/5.1.14/5.1.14-$(echo ${TARGETPLATFORM} | sed 's/amd64/x64/' | sed 's/\//-/g')-build.tar
tar –xvz 5.1.14-linux-arm64-build.tar

cd "$root"

exit 0
