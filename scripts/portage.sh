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
  if [[ ( $# -eq 2 ) && ( "$1" == "new" ) ]]; then
    sudo emerge --sync && sudo emerge -uDN --with-bdeps=y @world
  else
    sudo emerge --sync && sudo emerge -uD  @world
  fi
}
