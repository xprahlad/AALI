#!/bin/bash

#wget is required to download AALI scripts inside chroot

#base-devel contains useful utilities which are used frequently

#bash-completion helps in auto-completing commands hence included

echo -e "\nInstalling System\n"
pacstrap /mnt base base-devel wget bash-completion
echo