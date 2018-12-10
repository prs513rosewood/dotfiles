# file: createSymlinks.sh
# author: Lucas Frérot

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

config=`ls config`

for conf_dir in $config; do
  if [[ ! -e $HOME/.config/$conf_dir ]]; then
    ln -sf `pwd`/config/$conf_dir $HOME/.config/$conf_dir
  fi
done
