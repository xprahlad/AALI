#!/bin/bash

echo -e "\nCreating new initramfs\n"
mkinitcpio -p linux > /dev/null
echo