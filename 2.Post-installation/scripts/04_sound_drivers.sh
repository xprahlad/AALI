#!/bin/bash

echo "Installing Sound Drivers"
sudo pacman -S --noconfirm --needed alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pavucontrol
echo