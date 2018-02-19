#!/bin/bash

echo -e "\nEnabling multilib\n"
echo >> /etc/pacman.conf [multilib]
echo >> /etc/pacman.conf Include = /etc/pacman.d/mirrorlist
pacman -Sy
echo