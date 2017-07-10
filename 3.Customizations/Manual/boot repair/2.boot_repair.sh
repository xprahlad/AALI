pacman -S --noconfirm linux intel-ucode
bootctl install
cp -r ../../../1.Base-Installation/loader/ /boot/
bootctl update