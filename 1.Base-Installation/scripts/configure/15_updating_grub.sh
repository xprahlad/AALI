#!/bin/bash

echo -e "\nUpdating GRUB\n"
grub-mkconfig -o /boot/grub/grub.cfg > /dev/null
echo