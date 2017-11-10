pacman -S --noconfirm linux intel-ucode
rm -rf /boot/grub
rm -rf /boot/EFI/Arch
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Arch
grub-mkconfig -o /boot/grub/grub.cfg