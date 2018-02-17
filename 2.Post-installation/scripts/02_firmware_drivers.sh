#!/bin/bash

echo "Installing Firmware Drivers"
#may not be required for you
#known while updating initramfs as messagge appears with missing firmware i.e. sudo mkinitcpio -p linux
#replace packages with them
#ommit if not any
packer -S --noconfirm --noedit  lib32-glibc wd719x-firmware aic94xx-firmware
echo