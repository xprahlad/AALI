#!/bin/bash

echo "Installing Device Drivers"
sudo pacman -S --noconfirm --needed gvfs gvfs-mtp ntfs-3g exfat-utils android-udev
echo