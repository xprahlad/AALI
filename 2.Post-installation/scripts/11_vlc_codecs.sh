#!/bin/bash

echo "Installing VLC and Codecs"
sudo pacman -S --noconfirm --needed vlc qt4 gst-libav
echo