mount /dev/sda5 /mnt
mount /dev/sda2 /mnt/boot
swapon /dev/sda6
rm /mnt/etc/fstab
genfstab -U /mnt >> /mnt/etc/fstab
echo tmpfs /tmp tmpfs nodev,nosuid,size=7G 0 0 >> /mnt/etc/fstab
arch-chroot /mnt
umount -R /mnt