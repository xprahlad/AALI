#!/bin/bash

echo -e "\nMaking backup of sudoers\n"
sudo cp /etc/sudoers /etc/sudoers.bak
echo

echo -e "\nEnabling sudo for normal users\n"
sudo sed -i -e 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers
echo