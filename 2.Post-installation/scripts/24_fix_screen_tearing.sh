#!/bin/bash

echo "Fixing Screen Tearing"
#may not be needed for you
#use only if screen tears while playing HD videos
#sudo mkdir -p /etc/X11/xorg.conf.d/
#echo -e 'Section "Device"\n Identifier "Intel Graphics"\n Driver "Intel"\n Option "AccelMethod" "sna"\n Option "TearFree" "true"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/20-intel.conf
echo