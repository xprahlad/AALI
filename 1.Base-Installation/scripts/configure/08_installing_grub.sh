#!/bin/bash

echo "Downloading GRUB"
#os-prober is required if dual boot
#efibootmgr for EFI systems
pacman -S --noconfirm --needed os-prober grub efibootmgr

echo "Installing GRUB"
#installs for EFI system
#needs change if MBR system
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Arch
echo