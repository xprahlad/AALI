#!/bin/bash

echo "Installing Touchpad Drivers"
sudo pacman -S --noconfirm --needed libinput
echo