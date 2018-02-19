#!/bin/bash

echo "Installing General Packages"
#gksu is a helper to run GUI applications as root
#ntp useful for time-date sync over internet
#gnome-keyring helpful for setting password protected access for supported apps
#galculator is a calculator
#reflector is helps in rating pacman mirrors
#rclone for google-drive and other cloud storage synchronization
sudo pacman -S --noconfirm --needed gksu ntp curl gnome-keyring galculator reflector rclone
echo