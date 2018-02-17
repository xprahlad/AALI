#!/bin/bash

#Useful if bootloader got deleted or changed
#execute this script from arch installation media

echo "Mounting root partition"
#change /dev/sda5 accordingly
mount /dev/sda5 /mnt
echo

echo "Mounting boot partition"
#change /dev/sda2 accordingly
mount /dev/sda2 /mnt/boot
echo

echo "Turning swap on"
#change /dev/sda6 accordingly
swapon /dev/sda6
echo

echo "Removing old fstab"
rm /mnt/etc/fstab
echo

echo "Generating new fstab"
genfstab -U /mnt >> /mnt/etc/fstab
echo

echo "Updating tmpfs size"
#This manually sets the size of tmpfs
#helpful when compiling packages inside /tmp with low RAM
#change the size accordingly for yours to prevent any failure
#size = RAM/2 + swap_size
#ommit if not sure or if not needed
echo tmpfs /tmp tmpfs nodev,nosuid,size=6G 0 0 >> /mnt/etc/fstab
echo

echo "Changing root"
arch-chroot /mnt

echo "Unmounting partitions"
#will execute after exiting from chroot
umount -R /mnt
echo

echo "You can reboot if no errors occured during unmount."