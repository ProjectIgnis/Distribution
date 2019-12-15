#!/usr/bin/env bash

git fetch --prune && git reset --hard @{u}
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i "" 's/use_vsync = 1/use_vsync = 0/g' system.conf
fi

