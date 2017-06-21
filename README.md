# Arch Installer (Script)

# Warning
Do not run this script unless you have read it completely and modified the scripts accordingly for you. I am not responsible for any damage or data loss caused to you due to your neglegence. You should have knowledge of what each command is doing and how to modify that command in your case.

# Note
This is Arch Linux installation script for both pre-installation as well as post-installation for my PC. This script is useful if the system breaks and needs to be re-installed. I have already partitioned the disks for root and swap as /dev/sda5 and /dev/sda6 respectively and it is optimized for my personal intel laptop with UEFI boot.

# How to get this script during installation?
After a live media is successfuly booted in UEFI mode:

	wifi-menu
	pacman -Sy unzip
	wget https://github.com/ictsolved/arch-installer/archive/master.zip
	unzip master.zip

# What are included?

	1. Base Installation

	2. Post Installation

	3. Customizations

# 1. Base Installation
Inside this folder there is a script for setting up a base installation of arch automatically.

# Phase 1 - Installing base system

	a. Updating system clock

	b. Formatting root partition

	c. Mounting root and boot partitions

	d. Turning on swap

	e. Cleaning boot of previous installation

	f. Updating mirrors and signatures

	g. Installing base system

	h. Generating fstab

	i. Changing root

# Phase 2 - Configuring system inside chroot

	a. Setting time-zone

	b. Setting up locale

	c. Setting up Language

	d. Setting hostname

	e. Creating new initramfs

	f. Setting up password for root user

	g. Creating normal user

	h. Setting up password for the new user

	i. Enabling sudo for new user

	j. Enabling multilib

	k. Installing Bootloader

	l. Copying bootloader configurations

	m. Updating Bootloaders

	n. Exiting chroot

	o. Unmounting partitions

	p. Reboot

# 2. Post-installation
Login as the normal user after reboot and download this script again in same way.

	a. Installing Packer

	b. Installing Firmware Drivers

	c. Installing Display and Sound Drivers

	d. Installing XFCE4 Desktop Environment

	e. Installing fonts

	f. Installing General Applications

	g. Installing Archives Tools

	h. Enabling Network Manager

	i. Ignoring Lid Close

	j. Remapping Insert Key to Delete Key (because delete key broken in my laptop)

	k. Installing redshift

	l. Fixing screen-tearing

	m. Optimizing UI of Gimp

	n. Reboot

Now login as normal user and type 'startx' to start the session.

Feel free to use this script and customize it accordingly for you. Thanks!
