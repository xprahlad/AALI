#!/bin/bash

#Note: It requires modification to prevent data loss

echo "Formatting root partition"
#Replace /dev/sda5 with your root partition
mkfs.ext4 /dev/sda5
echo