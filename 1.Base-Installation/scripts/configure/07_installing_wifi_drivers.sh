#!/bin/bash

#needed for internet connection through wifi after installation completes

echo -e "\nInstalling Wi-Fi drivers\n"
pacman -S --noconfirm --needed iw wpa_supplicant dialog
echo