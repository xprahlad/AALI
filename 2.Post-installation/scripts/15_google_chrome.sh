#!/bin/bash

echo "Installing Google Chrome"
packer -S --noconfirm --noedit -S google-chrome
echo