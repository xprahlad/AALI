#!/bin/bash

#Install it at least because after starting network manager service, wifi gets disconnected

echo "Installing Network Manager"
sudo pacman -S --noconfirm --needed networkmanager network-manager-applet
echo

echo "Enabling Networ Manager at Startup"
sudo systemctl enable NetworkManager.service
echo

echo "Starting Network Manager"
sudo systemctl start NetworkManager.service
echo