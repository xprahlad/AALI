#!/bin/bash

#This will execute after user exits from chroot

echo "Unmounting Partitions"
umount -R /mnt
echo