#!/bin/bash

echo "Installing GIMP Photo Editor"
sudo pacman -S --noconfirm --needed gimp
echo

echo "Copying configs of GIMP UI"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/doctormo/GimpPs/master/tools/install.sh)"
echo