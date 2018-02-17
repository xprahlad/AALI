#!/bin/bash

#echo "Installing rbenv"
#useful if multiple versions of ruby needed
#packer -S --noconfirm --noedit -S rbenv ruby-build
#echo "Setting PATH for rbenv"
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
#echo "Initializing rbenv"
#rbenv init
#echo "Installing Ruby"
#rbenv install 2.4.1
#echo "Setting local Ruby version"
#rbenv local 2.4.1
#echo "Rehashing rbenv"
#rbenv rehash
#echo

echo "Installing Ruby"
sudo pacman -S ruby --noconfirm --needed
echo

echo "Disabling download of Gems documentation"
echo "gem: --no-document" >> ~/.gemrc
echo

echo "Installing bundler and jekyll"
gem install jekyll bundler
echo