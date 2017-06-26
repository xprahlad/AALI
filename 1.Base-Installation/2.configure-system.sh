echo
echo "1. Setting time-zone"
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
hwclock --systohc
echo
echo "2. Setting up locale"
echo >> /etc/locale.gen en_US.UTF-8 UTF-8
locale-gen
echo
echo "3. Setting up Language"
echo >> /etc/locale.conf LANG=en_US.UTF-8
echo
echo "4. Setting hostname"
echo >> /etc/hostname arch
echo
echo "5. Creating new initramfs"
mkinitcpio -p linux
echo
echo "6. Enter new password for root user"
passwd
echo
echo "7. Enabling multilib"
echo >> /etc/pacman.conf [multilib]
echo >> /etc/pacman.conf Include = /etc/pacman.d/mirrorlist
pacman -Sy
echo
echo "8. Installing Bootloader"
bootctl install
echo
echo "9. Copying bootloader configurations"
cp -r loader/ /boot/
echo
echo "10. Updating Bootloaders"
bootctl update
echo
echo "11. Creating user sarad"
useradd -m -G wheel -s /bin/bash sarad
echo
echo "12. Enter new password for sarad"
passwd sarad
echo
echo "14. Enabling sudo for sarad"
EDITOR=nano visudo
echo
echo "Configurations Completed"
echo "Press Ctrl+D to exit from chroot"
