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
yay -S --noconfirm --needed arj acpi aarchup aconfmgr-git atom arcolinux-meta-steam
  yay -S --noconfirm --needed betterdiscordctl-git bleachbit
    yay -S --noconfirm --needed clipit catfish chromium-widevine
      yay -S --noconfirm --needed discord
        yay -S --noconfirm --needed evolution etcher-bin
          yay -S --noconfirm --needed firefox firefox-adblock-plus firefox-i18n-en-ca firewalld
            yay -S --noconfirm --needed gotop github-desktop-bin guvcview google-earth-pro galculator guake
              yay -S --noconfirm --needed hexchat hddtemp
                yay -S --noconfirm --needed icedtea-web i3lock-next
                  yay -S --noconfirm --needed jre8-openjdk jre8-openjdk-headless
                    yay -S --noconfirm --needed lib32-libevdev libcurl-openssl-1.0 lutris lm_sensors lastpass
                      yay -S --noconfirm --needed materia-gtk-theme minecraft-launcher mcpelauncher-hx-script
                    yay -S --noconfirm --needed netflix-qdesktop nextcloud-client notify-osd ncurses5-compat-libs nvidia-dkms
                  yay -S --noconfirm --needed obs-studio obs-v4l2sink onboard oxy-neon optimus-manager
                yay -S --noconfirm --needed papirus-icon-theme paprefs perl-anyevent-i3 polybar pkgcacheclean playonlinux privoxy
              yay -S --noconfirm --needed qt5-script qbittorrent
            yay -S --noconfirm --needed radiotray redshift remmina
          yay -S --noconfirm --needed system-config-printer sharutils sl safeeyes spotify spotifywm-git screenkey scrcpy guiscrcpy
        yay -S --noconfirm --needed telegram-desktop tlp tlpui-git timeshift-autosnap tomboy-ng-bin tor-browser tor
      yay -S --noconfirm --needed unclutter uudeview
    yay -S --noconfirm --needed v4l2loopback-dkms vpn-unlimited vnstat
  yay -S --noconfirm --needed xautolock
yay -S --noconfirm --needed youtube-desktop


  echo "Yay packages installed"

#yay package scripts

betterdiscordctl install
mcpelauncher-hx-script

  echo "Yay package scipts installed"

#user atom packages
apm install --needed --noconfirm atom-beautify atom-ide-ui arc-ui autocomplete-html-entities
  apm install --needed --noconfirm autocomplete-python busy-signal duotone-blue-black-syntax flow-ide
    apm install --needed --noconfirm hydrogen-launcher hyperclick ide-clangd ide-cpp
      apm install --needed --noconfirm ide-css ide-go ide-html ide-json
      apm install --needed --noconfirm ide-php ide-python ide-rust intentions
    apm install --needed --noconfirm language-powershell language-rust linter linter-spell-html
  apm install --needed --noconfirm linter-ui-default pretty-json python-autopep8 python-indent
apm install --needed --noconfirm python-tools script teletype

  echo "Atom user packages installed"

#root atom packages
sudo apm install --needed --noconfirm atom-beautify arc-ui autocomplete-html-entities
  sudo apm install --needed --noconfirm autocomplete-python busy-signal duotone-blue-black-syntax hydrogen-launcher
    sudo apm install --needed --noconfirm hyperclick ide-clangd ide-cpp ide-css
      sudo apm install --needed --noconfirm ide-go ide-html ide-json ide-php
    sudo apm install --needed --noconfirm ide-python intentions language-powershell language-rust
  sudo apm install --needed --noconfirm linter linter-spell-html linter-ui-default pretty-json
sudo apm install --needed --noconfirm python-autopep8 python-indent python-tools teletype

  echo "Atom root packages installed"

sudo systemctl enable tlp.service
  sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

  echo "Tlp enabled"

sudo systemctl enable vpn-unlimited-daemon.service
sudo systemctl start vpn-unlimited-daemon.service

  echo "Vpn enabled"
