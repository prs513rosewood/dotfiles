#!/usr/bin/zsh

function switch-background() {
  ethernet_connected=$(ifconfig eth0 | grep Bcast)

  [[ -n "$ethernet_connected" ]] && base=1 || base=0

  desktop_uri=$(gsettings get org.gnome.desktop.background picture-uri)
  current_wallpaper=$(basename "$desktop_uri" | cut -d "'" -f 1)

  pic_folder="file:///home/`whoami`/Pictures"
  span_desktop="marceline.jpg"
  small_desktop="kuromaru.jpg"

  if [[ ($base -ne 1) && ("$current_wallpaper" != "$small_desktop") ]]; then
    gsettings set org.gnome.desktop.background picture-uri "$pic_folder/$small_desktop"
    gsettings set org.gnome.desktop.background picture-options "zoom"
  elif [[ ($base -eq 1) && "$current_wallpaper" != "$span_desktop" ]]; then
    gsettings set org.gnome.desktop.background picture-uri "$pic_folder/$span_desktop"
    gsettings set org.gnome.desktop.background picture-options "spanned"
  fi
}
