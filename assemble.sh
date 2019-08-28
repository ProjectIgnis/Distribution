#!/usr/bin/env bash

# Expected directory setup in parent folder: edopro-config, edopro-cdb, edopro-media, edopro-script
# edopro-bin, edopro-windows, edopro-osx, edopro-linux with appropriate upstream remote ONLY
# Edopro_1034 with correct username and email setup without extraneous files

set -euxo pipefail

cd $(dirname $0)/..
NEEDS_UPDATE=0
TARGETS="edopro-config edopro-cdb edopro-media edopro-script edopro-bin edopro-windows edopro-osx edopro-linux"
SIMPLY_COPY="edopro-config edopro-cdb edopro-media edopro-bin"
for REPO in $TARGETS; do
    cd $REPO
    git remote update
    LOCAL=$(git rev-parse HEAD)
    UPSTREAM=$(git rev-parse @{u})
    if [[ $LOCAL != $UPSTREAM ]]; then
        git reset --hard @{u}
        NEEDS_UPDATE=1
    fi
    cd ..
done

if [[ $NEEDS_UPDATE == 1 ]]; then
    cd Edopro_1034
    git remote update
    git reset --hard @{u}
    git reset --soft HEAD^
    for REPO in $SIMPLY_COPY; do
        rsync -ar ../$REPO/* .
    done
    rm assemble.sh
    cp ../edopro-windows/ygoprodll.exe edopro.exe
    cp ../edopro-windows/ocgcore.dll .
    cp ../edopro-linux/ygoprodll edopro
    rm -rf edopro.app
    cp -r ../edopro-osx/ygoprodll.app edopro.app
    mv edopro.app/Contents/MacOS/ygoprodll edopro.app/Contents/MacOS/edopro
    cp ../edopro-osx/libocgcore.dylib .
    rsync -ar --exclude=.git ../edopro-script/ script
    git add -A .
    git commit -m "EDOPro Automatic Assembly"
    git push -f origin master:master
fi
