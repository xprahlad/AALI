#!/bin/bash

echo "Setting time-zone"
#It sets timezone as Kathmandu
#Change if yours is different
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
echo

echo "Updating Hardware Clock"
hwclock --systohc
echo