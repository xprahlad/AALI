# AALI - Automated Arch Linux Installer (Shell Script)
This is an automated Arch Linux installation script that covers pre-installation as well as post-installation. It is mostly useful if the system breaks and needs to be re-installed because disk partitioning section is not included here.

# Warning
Do not run these scripts unless you have read this whole documentation carefully and modified the scripts accordingly for you. I am not responsible for any damage or data loss caused to you due to your negligence. You should have knowledge of what each command is doing and how to modify that command in your case. The commands that must be modified to prevent the data loss are marked as "modification required".

If root and swap partitions does not exist in your PC, they needs to be created before this script is executed. It is optimized for my Intel PC with UEFI boot mode hence go through the script thoroughly and make the required changes as per your specifications.

# How to get this script during installation?
After Arch Linux live media is successfully booted and shell appears, issue the following commands:

	wifi-menu

	pacman -Sy unzip

	wget https://github.com/ictsolved/aali/archive/master.zip

	unzip master.zip

Now the scripts will be available in working directory along with this documentation. Make the marked changes in the scripts with nano or vi and execute.

The best approach is to fork this repo and push your changes as per the specifications and requirements. This way the changes will be persistent and will be optimized for your PC as well. Afterwards whenever you need the installation of Arch on your PC, you can download your own version of this script and execute that without any hassle.

# What are included within it?

	A. Base Installation

	B. Post Installation

	C. Customization

# A. Base Installation
Inside this folder there are two scripts for setting up a base installation of Arch system automatically.

# Phase 1 - Installing base system

	1. Updating system clock

	2. Formatting root partition (modification required)

	3. Mounting root and boot partitions (modification required)

	4. Turning on swap (modification required)

	5. Cleaning boot of previous installation

	6. Updating to latest mirrors

	7. Installing base system

	8. Generating fstab

	9. Changing root

# Phase 2 - Configuring system inside chroot

	1. Setting time-zone

	2. Setting up locale

	3. Setting up Language

	4. Setting hostname

	5. Creating new initramfs

	6. Setting up password for root user

	7. Creating normal user

	8. Setting up password for the new user

	9. Enabling sudo for new user

	10. Enabling multilib

	11. Installing Bootloader

	12. Copying bootloader configurations

	13. Updating Bootloaders

	14. Exiting chroot

	15. Unmounting partitions

	16. Reboot

# 2. Post-installation
Login as the normal user after reboot and download the script again in same way as before.

	1. Installing Packer

	2. Installing Drivers

		i. Installing Firmware Drivers

		ii. Installing Display Drivers

		iii. Installing Sound Drivers

		iv. Installing Device Drivers

		v. Installing Touchpad Drivers

	4. Installing Applications

		i. Installing Archive tools

		ii. Installing Libre Office

		iii. Installing Fonts

		iv. Installing VLC and Codecs

		v. Installing General Packages

		vi. Installing GIMP Photo Editor

		vii. Installing Google Chrome

		viii. Installing Evince Document Viewer

		ix. Installing Atom Editor

		x. Installing Ruby and Gems

		xi. Installing redshift

		xii. Installing Network Manager

	5. Ignoring Lid Close

	6. Remapping Insert Key to Delete Key

	7. Fixing screen-tearing

	8. Reboot

After the reboot, login with your credentials and you'll be greeted with XFCE4 desktop.

# C. Customization
This folder contains the customization files. Some customizations are automatically copied whereas few needs to be manually done. Hence the files inside "Manual" will be helpful to accelerate the customization but it is optional if your customizations are different.
