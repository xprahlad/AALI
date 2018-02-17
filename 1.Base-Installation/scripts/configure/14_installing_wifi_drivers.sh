#!/bin/bash

#needed for internet connection through wifi after installation completes

echo "Installing Wi-Fi drivers"
pacman -S --noconfirm --needed iw wpa_supplicant dialog
echo