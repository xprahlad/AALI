#!/bin/bash

echo "Installing Display Drivers"
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-twm xterm xf86-video-intel
echo