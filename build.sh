#!/bin/sh 

set -xe

if [ -d "build-md/assets" ]; then
    rm -rf build-md/assets
else  
    mkdir -p build-md/assets
fi

cp -r assets build-md
pandoc APPS.MD -f markdown -t html -s -o build-md/APPS.html
pandoc APPS.MD -f markdown -t pdf -s -o build-md/APPS.pdf
pandoc APPS.MD -f markdown -t docx -s -o build-md/APPS.docx

# if [ -e build-md/APPS.html ]
# then
#     $1 --headless --disable-gpu --hide-scrollbars --window-size=800,10000  --screenshot=build-md/APPS.png build-md/APPS.html
# fi

