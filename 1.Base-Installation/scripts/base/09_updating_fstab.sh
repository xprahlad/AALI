#!/bin/bash

echo -e "\nGenerating fstab\n"
genfstab -U /mnt >> /mnt/etc/fstab
echo

echo -e "\nSetting size of tmpfs\n"
#This manually sets the size of tmpfs
#helpful when compiling packages inside /tmp with low RAM
#change the size accordingly for yours to prevent any failure
#size = RAM/2 + swap_size
#ommit if not sure or if not needed
echo tmpfs /tmp tmpfs nodev,nosuid,size=12G 0 0 >> /mnt/etc/fstab
echo
