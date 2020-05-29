############################################################################################################################
# Personal configs installer
# Author   	: 	xbc4000
# Website 	: 	github.com/xbc4000
# Written to be used on 64 bits computers
############################################################################################################################

#!/bin/bash
set -e

[ -d $HOME"/.config/i3" ] || mkdir -p $HOME"/.config/i3"
  [ -d $HOME"/.config/polybar" ] || mkdir -p $HOME"/.config/polybar"
[ -d $HOME"/.config/i3/scripts" ] || mkdir -p $HOME"/.config/i3/scripts"

sudo cp -r settings/etc/modprobe.d/* /etc/modprobe.d/
  sudo cp -r settings/etc/modules-load.d/* /etc/modules-load.d/
    cp -r i3/* ~/.config/i3/
    cp -r settings/polybar/* ~/.config/polybar/
  sudo cp -r settings/usr/share/pulseaudio/alsa-mixer/* /usr/share/pulseaudio/alsa-mixer/
sudo cp -r settings/etc/pulse/* /etc/pulse/

  echo "Custom settings installed"

  echo "AUTO REBOOTING NOW"

sudo systemctl -i reboot
