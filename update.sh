#!/usr/bin/env bash

set -euo pipefail

BRANCH=${1:-travis}
OSTYPE=${2:-$OSTYPE}

if [[ $(git remote | grep bin) != "bin" ]]; then
    git remote add bin https://github.com/kevinlul/edopro-bin.git
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    git fetch --prune bin $BRANCH-linux travis-core-linux-gcc7
    git checkout bin/$BRANCH-linux -- ygoprodll
    git checkout bin/travis-core-linux-gcc7 -- libocgcore.so
    git reset -q ygoprodll libocgcore.so
    mv ygoprodll EDOPro
elif [[ "$OSTYPE" == "darwin"* ]]; then
    git fetch --prune bin $BRANCH-osx travis-core-osx
    git checkout bin/$BRANCH-osx -- ygoprodll.app
    git checkout bin/travis-core-osx -- libocgcore.dylib
    git reset -q ygoprodll.app libocgcore.dylib
    rm -rf EDOPro.app
    mv ygoprodll.app EDOPro.app
    mv EDOPro.app/Contents/MacOS/ygoprodll EDOPro.app/Contents/MacOS/EDOPro
else
    git fetch --prune bin $BRANCH-windows travis-core-windows
    git checkout bin/$BRANCH-windows -- ygoprodll.exe
    git checkout bin/travis-core-windows -- ocgcore.dll
    git reset -q ygoprodll.exe ocgcore.dll
    mv ygoprodll.exe EDOPro.exe
fi

rm -rf WindBot
git fetch --prune bin windbot-ignite
git checkout bin/windbot-ignite -- WindBot
git reset -q WindBot
