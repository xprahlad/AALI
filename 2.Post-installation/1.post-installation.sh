echo
echo "1. Installing Packer"
sudo pacman -S fakeroot jshon expac git --needed --noconfirm
wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer
mv PKGBUILD\?h\=packer PKGBUILD
makepkg
sudo pacman -U packer-*.pkg.tar.xz --noconfirm
rm -rf packer pkg/ src/ packer-20160325-1-any.pkg.tar.xz PKGBUILD
packer -Syu
echo
echo "2. Installing Drivers"
echo
echo "i. Installing Firmware Drivers" #PC Specific (will be suggested during "mkinicpio -p linux" if required)
packer -S --noconfirm --noedit  lib32-glibc wd719x-firmware aic94xx-firmware
echo
echo "ii. Installing Display Drivers"
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-twm xterm xf86-video-intel
echo
echo "iii. Installing Sound Drivers"
sudo pacman -S --noconfirm --needed alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pavucontrol
echo
echo "iv. Installing Device Drivers"
sudo pacman -S --noconfirm --needed gvfs gvfs-mtp ntfs-3g
echo
echo "v. Installing Touchpad Drivers"
sudo pacman -S --noconfirm --needed libinput
echo
echo "3. Installing XFCE4 Desktop Environment"
sudo pacman -S --noconfirm --needed xfce4 xfce4-goodies xfce4-pulseaudio-plugin xscreensaver
packer -S --noconfirm --noedit -S xfce-theme-greybird elementary-xfce-icons
echo >> ~/.xinitrc exec startxfce4
cp ../3.Customizations/.gtkrc-2.0 ~/
cp ../3.Customizations/.bash_profile ~/
cp ../3.Customizations/.bashrc ~/
echo
echo "4. Installing Applications"
echo
echo "i. Installing Archive tools"
sudo pacman -S --noconfirm --needed p7zip unrar tar zip file-roller
echo
echo "ii. Installing Libre Office"
sudo pacman -S --noconfirm --needed libreoffice-fresh hunspell-en
echo
echo "iii. Installing Fonts"
sudo pacman -S --noconfirm --needed ttf-dejavu
packer -S --noconfirm --noedit -S ttf-google-fonts-git
echo
echo "iv. Installing VLC and Codecs"
sudo pacman -S --noconfirm --needed vlc qt4 gst-libav
echo
echo "v. Installing General Packages"
sudo pacman -S --noconfirm --needed gksu curl gnome-keyring galculator
echo
echo "vi. Installing GIMP Photo Editor"
sudo pacman -S --noconfirm --needed gimp
sh -c "$(curl -fsSL https://raw.githubusercontent.com/doctormo/GimpPs/master/tools/install.sh)"
echo
echo "vii. Installing Google Chrome"
packer -S --noconfirm --noedit -S google-chrome
echo
echo "viii. Installing Evince Document Viewer"
packer -S --noconfirm --noedit -S evince-light
echo
echo "ix. Installing Atom Editor"
sudo pacman -S --noconfirm --needed atom
echo
echo "x. Installing Ruby and Gems"
packer -S --noconfirm --noedit -S rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
rbenv init
rbenv install 2.4.1
rbenv local 2.4.1
echo "gem: --no-document" >> ~/.gemrc
gem install jekyll bundler rails
rbenv rehash
echo
echo "xi. Installing redshift"
sudo pacman -S --noconfirm --needed redshift python-gobject python-xdg librsvg
cp ../3.Customizations/redshift-gtk.desktop ~/.config/autostart/
echo
echo "xii. Installing Oracle JDK"
packer -S --noconfirm --noedit -S jdk
echo "xiii. Installing Network Manager"
sudo pacman -S --noconfirm --needed networkmanager network-manager-applet
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service
echo
echo "5. Ignoring Lid Close"
sudo sed -i -e 's/IgnoreLid=false/IgnoreLid=true/g' /etc/UPower/UPower.conf
sudo sed -i -e 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
echo
echo "6. Remapping Insert Key to Delete Key"
mkdir -p ~/.config/autostart
cp ../3.Customizations/CKmap.desktop ~/.config/autostart/
echo
echo "7. Fixing screen-tearing"
sudo mkdir /etc/X11/xorg.conf.d/
echo -e 'Section "Device"\n Identifier "Intel Graphics"\n Driver "Intel"\n Option "AccelMethod" "sna"\n Option "TearFree" "true"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/20-intel.conf
echo
echo "Arch Linux Setup Completed Successfuly!"
echo
echo "Please reboot the computer now."
