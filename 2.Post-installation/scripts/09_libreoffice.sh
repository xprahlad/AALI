#!/bin/bash

echo "Installing Libre Office"
#hunspell-en is a spell checker
sudo pacman -S --noconfirm --needed libreoffice-fresh hunspell-en
echo