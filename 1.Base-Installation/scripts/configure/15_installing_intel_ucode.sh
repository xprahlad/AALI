#!/bin/bash

#needed for intel CPU

echo "Installing intel-ucode"
pacman -S --noconfirm --needed intel-ucode
echo