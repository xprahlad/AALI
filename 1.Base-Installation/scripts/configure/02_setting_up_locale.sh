#!/bin/bash

echo -e "\nAdding locale\n"
#It adds en_US as locale
#add more if needed
echo >> /etc/locale.gen en_US.UTF-8 UTF-8
echo

echo -e "\nGenerating locale\n"
locale-gen > /dev/null
echo
