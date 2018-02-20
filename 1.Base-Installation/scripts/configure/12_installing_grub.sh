#!/bin/bash

echo -e "\nDownloading GRUB\n"
#efibootmgr for EFI systems
#os-prober required if dual boot
#grub does add Windows entry when run from chroot
#update grub again after logging in to add Windows entry
pacman -S --noconfirm --needed grub efibootmgr
echo

echo -e "\nInstalling GRUB\n"
#installs for EFI system
#needs change if MBR system
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Arch > /dev/null
echo
