############################################################################################################################
# Packages installer, Services starter, System updates, System cleanup
# Author   	: 	xbc4000
# Website 	: 	github.com/xbc4000
# Written to be used on 64 bits computers
############################################################################################################################

#!/bin/bash
set -e

#system updates
yay -Syu

  echo "System updated"

#intel ucode
yay -S --noconfirm --needed intel-ucode

  echo "Intel-ucode installed"

#kernel
yay -S --noconfirm --needed linux-zen
yay -S --noconfirm --needed linux-zen-headers

  echo "Kernel packages installed"

#grub update
sudo grub-mkconfig -o /boot/grub/grub.cfg

  echo "Grub update complete"

#fonts
yay -S --noconfirm --needed ttf-hack

  echo "Font packages installed"

#yay packages install
yay -S --noconfirm --needed arj acpi aarchup aconfmgr-git arcolinux-meta-steam
  yay -S --noconfirm --needed betterdiscordctl-git bleachbit
    yay -S --noconfirm --needed clipit catfish code
      yay -S --noconfirm --needed discord
        yay -S --noconfirm --needed evolution etcher-bin
          yay -S --noconfirm --needed firewalld
            yay -S --noconfirm --needed gotop github-desktop-bin guvcview google-earth-pro galculator guake
              yay -S --noconfirm --needed hexchat hddtemp
                yay -S --noconfirm --needed icedtea-web i3lock-next
                  yay -S --noconfirm --needed jre8-openjdk jre8-openjdk-headless
                    yay -S --noconfirm --needed lib32-libevdev lutris lm_sensors lastpass
                      yay -S --noconfirm --needed materia-gtk-theme minecraft-launcher mcpelauncher-hx-script
                      yay -S --noconfirm --needed netflix-qdesktop notify-osd nvidia-vulkan-dkms
                    yay -S --noconfirm --needed obs-studio obs-v4l2sink onboard oxy-neon optimus-manager
                  yay -S --noconfirm --needed papirus-icon-theme paprefs perl-anyevent-i3 polybar playonlinux privoxy
                yay -S --noconfirm --needed qt5-script qbittorrent
              yay -S --noconfirm --needed radiotray redshift
            yay -S --noconfirm --needed sharutils sl safeeyes spotify spotifywm-git scrcpy guiscrcpy
          yay -S --noconfirm --needed telegram-desktop tlp tlpui-git tomboy-ng-bin tor-browser tor
        yay -S --noconfirm --needed unclutter uudeview
      yay -S --noconfirm --needed v4l2loopback-dkms vpn-unlimited vnstat
    yay -S --noconfirm --needed whale-browser
  yay -S --noconfirm --needed xautolock
yay -S --noconfirm --needed youtube-desktop

  echo "Yay packages installed"

#yay package scripts

betterdiscordctl install
mcpelauncher-hx-script

  echo "Yay package scipts installed"

sudo systemctl enable tlp.service
  sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

  echo "Tlp enabled"

sudo systemctl enable vpn-unlimited-daemon.service
sudo systemctl start vpn-unlimited-daemon.service

  echo "Vpn enabled"
