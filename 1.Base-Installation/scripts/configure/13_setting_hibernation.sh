#!/bin/bash

#quiet is also removed to show the kernel message during boot

echo -e "\nSetting up Hibernation\n"
#replace /dev/sda6 with your swap partition
sed -i -e 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="resume=\/dev\/sda3"/g' /etc/default/grub
echo