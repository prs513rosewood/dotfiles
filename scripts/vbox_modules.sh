vbox_modules () {
  sudo emerge virtualbox-modules
  sudo modprobe vboxdrv vboxnetadp vboxnetflt vboxpci
}
