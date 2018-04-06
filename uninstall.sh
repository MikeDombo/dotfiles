#!/bin/bash
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -h ~/$file ]; then
        rm -f ~/$file
    fi
    if [ -e ~/${file}.dtbak ]; then
        mv -f ~/$file{.dtbak,}
    fi
done
echo "Uninstalled"
