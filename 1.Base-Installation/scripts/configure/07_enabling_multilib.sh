#!/bin/bash

echo "Enabling multilib"
echo >> /etc/pacman.conf [multilib]
echo >> /etc/pacman.conf Include = /etc/pacman.d/mirrorlist
pacman -Sy
echo