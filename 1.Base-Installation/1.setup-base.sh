clear
echo "Updating system clock"
timedatectl set-ntp true
clear

echo "Formatting root partition"
mkfs.ext4 /dev/sda5
clear

echo "Mounting root and boot partitions"
mount /dev/sda5 /mnt
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot
clear

echo "Turning on swap"
swapon /dev/sda6
clear

echo "Cleaning boot"
rm /mnt/boot/vmlinuz-linux
rm /boot/intel-ucode.img
clear

echo "Updating mirrors and keys"
(curl https://www.archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4& sleep 1;) | tee mirrorlist
sudo cp mirrorlist /etc/pacman.d/
sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist
rm mirrorlist
pacman-key --refresh-keys
clear

echo "Installing Base"
pacstrap /mnt base
clear

ehco "Generating fstab"
genfstab -U /mnt >> /mnt/etc/fstab
clear

echo "Changing root"
arch-chroot /mnt
clear

echo "Setting time-zone"
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
hwclock --systohc
clear

echo "Setting up locale"
echo >> /etc/locale.gen en_US.UTF-8 UTF-8
locale-gen
clear

echo "Setting up Language"
echo >> /etc/locale.conf LANG=en_US.UTF-8
clear

echo "Setting hostname"
echo >> /etc/hostname arch
clear

echo "Creating new initramfs"
mkinitcpio -p linux
clear

echo "Enter new password for root user"
passwd
clear

echo "Enabling multilib"
echo >> /etc/pacman.conf [multilib]
echo >> /etc/pacman.conf Include = /etc/pacman.d/mirrorlist
clear

echo "Installing intel-ucode"
pacman -S intel-ucode --noconfirm
clear

echo "Enabling WiFi"
pacman -S iw wpa_supplicant netctl --noconfirm --needed
clear

echo "Installing bash-completion and sudo"
pacman -S bash-completion sudo --noconfirm --needed
clear

echo "Installing Bootloader"
bootctl install
clear

echo "Copying bootloader configurations"
cp -r loader/ /boot/
clear

echo "Updating Bootloaders"
bootctl update
clear

echo "Exiting chroot"
exit
clear

echo "Unmounting partitions"
umount -R /mnt
echo
echo "You can reboot now."