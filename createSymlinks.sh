#!/usr/bin/zsh

# file: createSymlinks.sh
# author: Lucas Frérot

for file in *; do
    if [[ $file != `basename $0` ]]; then
        if [[ -f $file ]]; then
	    ln -sf `pwd`/$file $HOME/.$file
        fi
    fi
done

directories=($HOME/.vim $HOME/.local/scripts)

for dir in $directories; do
  if [[ -h $dir ]]; then
    rm -f $dir
  fi
done

ln -sf `pwd`/vim $HOME/.vim
ln -sf `pwd`/scripts $HOME/.local/scripts
