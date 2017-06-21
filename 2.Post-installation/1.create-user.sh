echo "Creating user sarad"
useradd -m -G wheel -s /bin/bash sarad
clear

echo "Enter new password for sarad"
passwd sarad
clear

echo "Enabling sudo for sarad"
EDITOR=nano visudo
clear
echo "Exit and re-login as sarad"