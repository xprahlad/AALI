# Arch Installer (Script)
#Warning: Do not run this script unless you have read it completely and modified the scripts accordingly for you. I am not responsible for any damage or data loss caused to you due to your neglegence. You should have knowledge of what each command is doing and how to modify that command in your case.

This is Arch Linux installation script for both pre-installation as well as post-installation for my PC. This script is useful if the system breaks and needs to be re-installed. I have already partitioned the disks for root and swap as /dev/sda5 and /dev/sda6 respectively and it is optimized for my personal intel laptop.

#What are included?
1. Base Installation
2. Post Installation
3. Customizations

#1. Base Installations
Inside this folder there is a script for setting up a base installation of arch automatically.
a. Updating system clock
b. Formatting root partition
c. Mounting root and boot partition
d. Turning on swap
e. Cleaning boot of previous installation
f. Updating mirrors and keys
g. Installing Base
h. Generating fstab
i. Changing root
j. Setting time-zone
k. Setting up locale
l. Setting up Language
m. Setting hostname
n. Creating new initramfs
o. Setting up password for root user
p. Enabling multilib
q. Installing intel-ucode
r. Enabling WiFi
s. Installing bash-completion and sudo
t. Installing Bootloader
u. Copying bootloader configurations
v. Updating Bootloaders
w. Exiting chroot
x. Unmounting partitions

#2. Post-installation
A. Phase 1
a. Creating user
b. Setting up password for the new user
c. Enabling sudo for new user

Exit and login as new user

B. Phase 2
a. Installing Packer
b. Updating repository
c. Installing Firmware Drivers
d. Installing Display Drivers
e. Installing XFCE4 Desktop Environment
f. Installing fonts
g. Installing General Packages
h. Installing Archives Tools
i. Enabling Network Manager
j. Ignoring Lid Close
k. Remapping Insert Key to Delete Key (because delete key broken in my laptop)
l. Run redshift at startup
m. Fixing screen-tearing

Feel free to use this script and customize it accordingly for you. Thanks!