#!/bin/bash

echo "Installing dependencies"
sudo pacman -S fakeroot jshon expac git --needed --noconfirm

echo "Downloading package"
wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer

echo "Building package"
mv PKGBUILD\?h\=packer PKGBUILD
makepkg

echo "Installing package"
sudo pacman -U packer-*.pkg.tar.xz --noconfirm

echo "Removing temporary files"
rm -rf packer pkg/ src/ packer-20160325-1-any.pkg.tar.xz PKGBUILD

echo "Updating package repository"
packer -Syu
echo