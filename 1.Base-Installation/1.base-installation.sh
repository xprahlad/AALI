echo "1. Updating system clock"
timedatectl set-ntp true
echo
echo "2. Formatting root partition"
mkfs.ext4 /dev/sda5 >/dev/null
echo
echo "3. Mounting root and boot partitions"
mount /dev/sda5 /mnt
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot
echo
echo "4. Turning on swap"
swapon /dev/sda6 >/dev/null
echo
echo "5. Cleaning boot"
rm /mnt/boot/vmlinuz-linux
rm /boot/intel-ucode.img
echo
echo "6. Updating to latest mirror"
(curl https://www.archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4& sleep 1;) | tee mirrorlist >/dev/null
sudo cp mirrorlist /etc/pacman.d/
sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist >/dev/null
rm mirrorlist
echo
echo "7. Refreshing signatures"
echo "It will take a while plese be patient..."
pacman-key --refresh-keys >/dev/null
echo
echo "8. Installing base system"
echo "It will take a while plese be patient..."
pacstrap /mnt base base-devel wget unzip bash-completion intel-ucode iw wpa_supplicant dialog >/dev/null
echo
ehco "9. Generating fstab"
genfstab -U /mnt >> /mnt/etc/fstab
echo
echo "10. Changing to chroot"
arch-chroot /mnt
echo
echo "Unmounting partitions"
umount -R /mnt
echo
echo "You can reboot now and login as sarad."
