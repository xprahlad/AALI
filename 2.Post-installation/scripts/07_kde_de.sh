#!/bin/bash

echo "Installing KDE Desktop Environment"
sudo pacman -S --noconfirm --needed plasma plasma-wayland-session kde-applications breeze-kde4 plasma-pa sddm
echo