#!/bin/sh 

set -xe

if [ -d "build-md/assets" ]; then
    rm -rf build-md/assets
else  
    mkdir -p build-md/assets
fi

cp -r assets build-md
