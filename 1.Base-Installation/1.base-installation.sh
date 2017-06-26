echo "1. Updating system clock"
timedatectl set-ntp true
echo
echo "2. Formatting root partition" # (modification required)
mkfs.ext4 /dev/sda5
echo
echo "3. Mounting root and boot partitions" # (modification required)
mount /dev/sda5 /mnt
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot
echo
echo "4. Turning on swap" # (modification required)
swapon /dev/sda6
echo
echo "5. Cleaning boot"
rm /mnt/boot/vmlinuz-linux
rm /boot/intel-ucode.img
echo
echo "6. Updating to latest mirror"
(curl https://www.archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4& sleep 1;) | tee mirrorlist
sudo cp mirrorlist /etc/pacman.d/
sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist
rm mirrorlist
echo
echo "7. Installing base system"
pacstrap /mnt base base-devel wget unzip bash-completion intel-ucode iw wpa_supplicant dialog
echo
ehco "8. Generating fstab"
genfstab -U /mnt >> /mnt/etc/fstab
echo tmpfs /tmp tmpfs nodev,nosuid,size=7G 0 0 >> /mnt/etc/fstab
echo
echo "9. Changing to chroot"
arch-chroot /mnt
echo
echo "Unmounting partitions" #will execute after user exits chroot
umount -R /mnt
echo
echo "You can reboot now and login as sarad."
