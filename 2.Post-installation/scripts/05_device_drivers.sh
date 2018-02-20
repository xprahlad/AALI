#!/bin/bash

echo "Installing Device Drivers"
sudo pacman -S --noconfirm --needed gvfs gvfs-mtp exfat-utils android-udev
echo