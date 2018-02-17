#!/bin/bash

#Even very old iso containing dead mirrors also works with this method

echo "Downloading latest mirrors"
(curl https://www.archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4& sleep 1;) | tee mirrorlist
echo

echo "Making backup of existing mirrors"
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
echo

echo "Copying new mirrors"
sudo cp mirrorlist /etc/pacman.d/
sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist
echo

echo "Updating pacakge repository"
sudo pacman -Sy
echo

echo "Choosing fastest mirror"
sudo pacman -S reflector --noconfirm --needed
sudo reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
echo

echo "Removing temporary file"
rm mirrorlist
echo