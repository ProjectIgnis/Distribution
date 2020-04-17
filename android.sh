#!/usr/bin/env bash

set -euo pipefail

if [[ $(git remote | grep bin) != "bin" ]]; then
    git remote add bin https://github.com/kevinlul/edopro-bin.git
fi

git fetch --prune bin android
git checkout bin/android -- *.apk
git reset -q *apk
