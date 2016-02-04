#!/usr/bin/zsh

# file: createSymlinks.sh
# author: Lucas Frérot

for file in *; do
    echo $file
    if [[ $file != `basename $0` ]]; then
        ln -s `pwd`/$file $HOME/.$file
    fi
done
