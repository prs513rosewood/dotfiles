#!/usr/bin/env bash
# file: createSymlinks.sh
# author: Lucas Frérot

link_dir_content() {
  dir=$1
  content=$(ls $dir)
  for file in $content; do
    if [[ ! -e $HOME/.$dir/$file ]]; then
      ln -sf $PWD/$dir/$file $HOME/.$dir/$file
    fi
  done
}

for file in *; do
    if [[ $file != `basename $0` ]]; then
        if [[ -f $file ]]; then
	    ln -sf `pwd`/$file $HOME/.$file
        fi
    fi
done

directories=($HOME/.local/scripts)

for dir in $directories; do
  if [[ -h $dir ]]; then
    rm -f $dir
  fi
done

if [[ ! -e $HOME/.local/scripts ]]; then
  ln -sf `pwd`/scripts $HOME/.local/scripts
fi

link_dir_content config
link_dir_content ssh
