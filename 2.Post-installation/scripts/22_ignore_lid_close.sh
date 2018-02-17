#!/bin/bash

echo "Disabling Sleep on Lid Close"
#Disables sleep on lid close
#delete this script if not needed
sudo sed -i -e 's/IgnoreLid=false/IgnoreLid=true/g' /etc/UPower/UPower.conf
sudo sed -i -e 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
echo