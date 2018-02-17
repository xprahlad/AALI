#!/bin/bash

echo "Setting up Hibernation"
#replace /dev/sda6 with your swap partition
sed -i -e 's/GRUB_CMDLINE_LINUX_DEFAULT="/GRUB_CMDLINE_LINUX_DEFAULT="resume=\/dev\/sda6 /g' /etc/default/grub
echo