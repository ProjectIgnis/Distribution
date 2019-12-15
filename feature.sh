#!/usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    git checkout origin/$1-linux -- ygoprodll
elif [[ "$OSTYPE" == "darwin"* ]]; then
    git checkout origin/$1-osx -- ygoprodll.app
else
    git checkout origin/$1-windows -- ygoprodll.exe
fi
