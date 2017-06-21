echo
echo "1. Installing Packer"
sudo pacman -S fakeroot jshon expac git --needed --noconfirm >/dev/null
wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer >/dev/null
mv PKGBUILD\?h\=packer PKGBUILD
makepkg
sudo pacman -U packer-*.pkg.tar.xz --noconfirm >/dev/null
rm -rf packer pkg/ src/ packer-20160325-1-any.pkg.tar.xz PKGBUILD
packer -Syu >/dev/null
echo
echo "2. Installing Firmware Drivers"
packer -S --noconfirm --noedit  lib32-glibc wd719x-firmware aic94xx-firmware >/dev/null
echo
echo "3. Installing Display and Sound Drivers"
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-twm xterm xf86-video-intel alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pavucontrol >/dev/null
echo
echo "4. Installing XFCE4 Desktop Environment"
sudo pacman -S --noconfirm --needed xfce4 xfce4-goodies xfce4-pulseaudio-plugin xscreensaver >/dev/null
packer -S --noconfirm --noedit -S xfce-theme-greybird elementary-xfce-icons >/dev/null
echo >> ~/.xinitrc exec startxfce4
cp ../3.Customizations/.gtkrc-2.0 ~/
echo
echo "5. Installing fonts"
sudo pacman -S --noconfirm --needed ttf-droid ttf-dejavu ttf-freefont >/dev/null
echo
echo "6. Installing General Applications"
sudo pacman -S --noconfirm --needed qt4 p7zip unrar tar zip curl vlc gimp libreoffice-fresh gnome-keyring wine gvfs gvfs-mtp ntfs-3g networkmanager network-manager-applet atom gksu galculator ruby libinput >/dev/null
packer -S --noconfirm --noedit -S google-chrome evince-light >/dev/null
echo
echo "7. Enabling Network Manager"
sudo systemctl enable NetworkManager.service >/dev/null
sudo systemctl start NetworkManager.service
echo
echo "8. Ignoring Lid Close"
sudo sed -i -e 's/IgnoreLid=false/IgnoreLid=true/g' /etc/UPower/UPower.conf
sudo sed -i -e 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
echo
echo "9. Remapping Insert Key to Delete Key"
mkdir -p ~/.config/autostart
cp ../3.Customizations/CKmap.desktop ~/.config/autostart/
echo
echo "10. Installing redshift"
sudo pacman -S --noconfirm --needed redshift python-gobject python-xdg librsvg >/dev/null
cp ../3.Customizations/redshift-gtk.desktop ~/.config/autostart/
echo
echo "11. Fixing screen-tearing"
sudo mkdir /etc/X11/xorg.conf.d/
echo -e 'Section "Device"\n Identifier "Intel Graphics"\n Driver "Intel"\n Option "AccelMethod" "sna"\n Option "TearFree" "true"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/20-intel.conf >/dev/null
echo
echo "12. Optimizing UI of Gimp"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/doctormo/GimpPs/master/tools/install.sh)" >/dev/null
echo
echo "Arch Linux Setup Completed Successfuly!"
reboot
