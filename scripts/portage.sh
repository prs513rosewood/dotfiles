function portage_backup() {
  file=/tmp/portage_backup_`date "+%s"`.bz2
  target="/run/media/frerot/LHF Data/portage_backups"
  cd /etc
  tar -jcf $file portage
  if [ -d $target ]; then
    mv $file $target
  fi
  cd -
}

function genup() {
  sudo emerge --sync && sudo emerge -uDN --with-bdeps=y @world
}
