#!/bin/bash

#Note: It requires modification to prevent data loss

echo -e "\nFormatting root partition\n"
#Replace /dev/sda1 with your root partition
mkfs.ext4 /dev/sda1
echo