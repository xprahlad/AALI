#!/bin/bash

echo "Making backup of sudoers"
sudo cp /etc/sudoers /etc/sudoers.bak
echo

echo "Enabling sudo for normal users"
sudo sed -i -e 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers
echo