#!/usr/bin/env bash

git fetch --prune && git reset --hard @{u}
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    git checkout origin/windbot-linux -- ygoprodll
elif [[ "$OSTYPE" == "darwin"* ]]; then
    git checkout origin/windbot-osx -- ygoprodll.app
    sed -i "" 's/use_vsync = 1/use_vsync = 0/g' system.conf
else
    git checkout origin/windbot-windows -- ygoprodll.exe
fi

