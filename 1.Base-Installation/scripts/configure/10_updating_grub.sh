#!/bin/bash

echo "Updating GRUB"
grub-mkconfig -o /boot/grub/grub.cfg
echo