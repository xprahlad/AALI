#!/bin/bash

echo "Setting Hibernation file size"
#change values inside image_size present in Customizations folder
#should be in bytes
#should not exceed swap size
sudo cp ../3.Customizations/image_size /sys/power/image_size 
echo

echo "Enabling Hibernation"
sudo cp /etc/mkinitcpio.conf /etc/mkinitcpio.conf.bak
sudo sed -i -e 's/base udev/base udev resume/g' /etc/mkinitcpio.conf
echo

echo "Creating new initramfs"
sudo mkinitcpio -p linux
echo