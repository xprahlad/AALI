#!/bin/bash

#Even very old iso containing dead mirrors also works with this method

echo -e "\nDownloading latest mirrors\n"
(curl https://www.archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4& sleep 1;) | tee mirrorlist > /dev/null
echo

echo -e "\nMaking backup of existing mirrors\n"
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
echo

echo -e "\nCopying new mirrors\n"
sudo cp mirrorlist /etc/pacman.d/
sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist
echo

echo -e "\nUpdating pacakge repository\n"
sudo pacman -Sy
echo

echo -e "\nChoosing fastest mirror\n"
sudo pacman -S reflector --noconfirm --needed
sudo reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist
echo

echo -e "\nRemoving temporary file\n"
rm mirrorlist
echo