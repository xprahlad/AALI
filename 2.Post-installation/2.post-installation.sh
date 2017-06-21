echo "Installing Packer"
sudo pacman -S base-devel fakeroot jshon expac git wget --needed --noconfirm
wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer
mv PKGBUILD\?h\=packer PKGBUILD
makepkg
sudo pacman -U packer-*.pkg.tar.xz
rm -rf packer pkg/ src/ packer-20160325-1-any.pkg.tar.xz PKGBUILD
clear

echo "Updating repository"
packer -Syu
clear

echo "Installing Firmware Drivers"
packer -S --noconfirm --noedit lib32-glibc wd719x-firmware aic94xx-firmware
clear

echo "Installing Display Drivers"
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-twm xterm xf86-video-intel
clear

echo "Installing XFCE4 Desktop Environment"
sudo pacman -S --noconfirm --needed xfce4 xfce4-goodies xfce4-pulseaudio-plugin xscreensaver
packer -S --noconfirm --noedit -S xfce-theme-greybird elementary-xfce-icons
echo >> ~/.Xinitrc exec startxfce4
cp ../3.Customizations/.gtkrc-2.0 ~/
clear

echo "Installing fonts"
sudo pacman -S --noconfirm --needed ttf-droid ttf-dejavu

echo "Installing General Packages"
sudo pacman -S --noconfirm --needed curl vlc gimp libreoffice-fresh wine networkmanager network-manager-applet atom gksu galculator redshift ruby libinput
packer -S --noconfirm --noedit -S google-chrome evince-light
clear

echo "Archives Tools"
sudo pacman -S --noconfirm --needed p7zip unrar tar zip unzip
clear

echo "Enabling Network Manager"
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
clear

echo "Ignoring Lid Close"
sudo sed -i -e 's/IgnoreLid=false/IgnoreLid=true/g' /etc/UPower/UPower.conf
sudo sed -i -e 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
clear

echo "Remapping Insert Key to Delete Key"
cp ../3.Customizations/CKmap.desktop ~/.config/autostart/
clear

echo "Run redshift at startup"
cp ../3.Customizations/redshift-gtk.desktop ~/.config/autostart/
clear

echo "Fixing screen-tearing"
sudo mkdir /etc/X11/xorg.conf.d/
echo -e 'Section "Device"\n Identifier "Intel Graphics"\n Driver "Intel"\n Option "AccelMethod" "sna"\n Option "TearFree" "true"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/20-intel.conf
clear

echo "Arch Linux Setup Completed Successfuly!"