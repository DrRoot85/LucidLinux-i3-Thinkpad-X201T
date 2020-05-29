############################################################################################################################
# Core unlock, Speedtest, Reflector, Git config
# Author   	: 	xbc4000
# Website 	: 	github.com/xbc4000
# Written to be used on 64 bits computers
############################################################################################################################

#!/bin/bash
set -e

numberofcores=$(grep -c ^processor /proc/cpuinfo)

case $numberofcores in

    8)
          echo "You have " $numberofcores" cores."
            echo "Changing the makeflags for "$numberofcores" cores."
              sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j9"/g' /etc/makepkg.conf
            echo "Changing the compression settings for "$numberofcores" cores."
          sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 8 -z -)/g' /etc/makepkg.conf
        ;;
    6)
          echo "You have " $numberofcores" cores."
            echo "Changing the makeflags for "$numberofcores" cores."
              sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j7"/g' /etc/makepkg.conf
            echo "Changing the compression settings for "$numberofcores" cores."
          sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 6 -z -)/g' /etc/makepkg.conf
        ;;
    4)
          echo "You have " $numberofcores" cores."
            echo "Changing the makeflags for "$numberofcores" cores."
              sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j5"/g' /etc/makepkg.conf
            echo "Changing the compression settings for "$numberofcores" cores."
          sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 4 -z -)/g' /etc/makepkg.conf
        ;;
    2)
          echo "You have " $numberofcores" cores."
            echo "Changing the makeflags for "$numberofcores" cores."
              sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j3"/g' /etc/makepkg.conf
            echo "Changing the compression settings for "$numberofcores" cores."
          sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 2 -z -)/g' /etc/makepkg.conf
        ;;
    *)
          echo "We do not know how many cores you have."
          echo "Do it manually."
        ;;

esac
  echo "All cores will be used during building and compression"

#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config
sudo pacman -S --noconfirm --needed git
  git init
    git config --global user.name "xbc4000"
      git config --global user.email "chrisr414@gmail.com"
        sudo git config --system core.editor nano
      git config --global credential.helper cache
    git config --global credential.helper 'cache --timeout=18000'
  git config --global push.default simple
echo "Git installed"

