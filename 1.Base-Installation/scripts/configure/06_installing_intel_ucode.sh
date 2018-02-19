#!/bin/bash

#needed for intel CPU to get microcode(firmware) updates

echo -e "\nInstalling Intel Microcode\n"
pacman -S --noconfirm --needed intel-ucode
echo