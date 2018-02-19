#!/bin/bash

echo -e "\nSetting time-zone\n"
#It sets timezone as Kathmandu
#Change if yours is different
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
echo

echo -e "\nUpdating Hardware Clock\n"
hwclock --systohc
echo