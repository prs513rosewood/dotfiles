#!/usr/bin/zsh

# file: createSymlinks.sh
# author: Lucas Frérot

for file in *; do
    if [[ $file != `basename $0` ]]; then
        if [[ -d $file ]]; then
            rm -f $HOME/.$file
        fi
        ln -sf `pwd`/$file $HOME/.$file
    fi
done
