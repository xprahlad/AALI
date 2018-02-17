#!/bin/bash

#execute this inside chroot

echo "Installing linux and intel-ucode"
pacman -S --noconfirm linux intel-ucode
echo

echo "Removing old GRUB configurations"
rm -rf /boot/grub
rm -rf /boot/EFI/Arch
echo

echo "Installing GRUB Bootloader"
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Arch
echo

echo "Updating GRUB"
grub-mkconfig -o /boot/grub/grub.cfg
echo

echo "Press Ctrl+D to exit from chroot"
echo