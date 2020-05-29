############################################################################################################################
# Packages installer, Services starter, System updates, System cleanup
# Author   	: 	xbc4000
# Website 	: 	github.com/xbc4000
# Written to be used on 64 bits computers
############################################################################################################################

#!/bin/bash
set -e

#yay-packages-install
yay -S --noconfirm --needed arj acpi aarchup aconfmgr-git
  yay -S --noconfirm --needed betterdiscordctl-git
    yay -S --noconfirm --needed clipit
      yay -S --noconfirm --needed evolution
        yay -S --noconfirm --needed firewalld ttf-hack
          yay -S --noconfirm --needed gotop github-desktop-bin
            yay -S --noconfirm --needed icedtea-web i3lock-next
              yay -S --noconfirm --needed jre8-openjdk jre8-openjdk-headless jgmenu
                yay -S --noconfirm --needed lib32-libevdev libcurl-openssl-1.0 linux-zen-headers
                  yay -S --noconfirm --needed minitube
                  yay -S --noconfirm --needed nextcloud-client notify-osd ncurses5-compat-libs
                yay -S --noconfirm --needed obs-v4l2sink
              yay -S --noconfirm --needed paprefs perl-anyevent-i3 polybar pkgcacheclean picom-rounded-corners
            yay -S --noconfirm --needed qt5-script qtwebflix-git
          yay -S --noconfirm --needed redshift
        yay -S --noconfirm --needed system-config-printer sharutils sl safeeyes
      yay -S --noconfirm --needed tlp tlpui-git timeshift-autosnap tomboy-ng-bin
    yay -S --noconfirm --needed unclutter uudeview
  yay -S --noconfirm --needed v4l2loopback-dkms vpn-unlimited vysor-appimage
yay -S --noconfirm --needed xautolock

  echo "Yay packages installed"

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
