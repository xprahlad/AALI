#!/bin/bash

echo "Installing Redshift"
#is a light filter for reducing eye strain
sudo pacman -S --noconfirm --needed redshift python-gobject python-xdg librsvg
echo

echo "Enabling Redshift at Startup"
mkdir -p ~/.config/autostart
cp ../3.Customizations/redshift-gtk.desktop ~/.config/autostart/
echo