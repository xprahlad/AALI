#!/bin/bash

#Note: It requires modification to prevent data loss

echo -e "\nMounting root partition\n"
#Replace /dev/sda1 with your root partition
mount /dev/sda1 /mnt
echo

echo -e "\nMounting boot partition\n"
#Replace /dev/sda2 with your boot partition
mkdir -p /mnt/boot
mount /dev/sda2 /mnt/boot
echo