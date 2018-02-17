#!/bin/bash

echo "Adding Black Arch Repo"
#useful if lots of pentesting tools are required
curl -O https://blackarch.org/strap.sh
sha1sum strap.sh
chmod +x strap.sh
sudo ./strap.sh
echo