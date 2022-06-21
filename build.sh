#!/bin/sh 

set -xe

if [ -d "docs/assets" ]; then
    rm -rf docs/assets
else  
    mkdir -p docs/assets
fi

cp -r assets docs
pandoc APPS.MD -f markdown -t html -s -o docs/index.html
pandoc APPS.MD -f markdown -t pdf -s -o docs/APPS.pdf
pandoc APPS.MD -f markdown -t docx -s -o docs/APPS.docx

# if [ -e docs/APPS.html ]
# then
#     $1 --headless --disable-gpu --hide-scrollbars --window-size=800,10000  --screenshot=docs/APPS.png docs/APPS.html
# fi

