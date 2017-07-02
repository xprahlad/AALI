echo "1. Updating system clock"
./scripts/base/1.\ Updating\ System\ Clock
echo
echo "2. Formatting root partition" # (modification required)
./scripts/base/2.\ Formatting\ root\ partition
echo
echo "3. Mounting root and boot partitions" # (modification required)
./scripts/base/3.\ Mounting\ root\ and\ boot\ partitions
echo
echo "4. Turning on swap" # (modification required)
./scripts/base/4.\ Turning\ on\ swap
echo
echo "5. Cleaning boot"
 ./scripts/base/5.\ Cleaning\ boot
echo
echo "6. Updating to latest mirror"
 ./scripts/base/6.\ Updating\ to\ latest\ mirror
echo
echo "7. Installing base system"
./scripts/base/7.\ Installing\ base\ system
echo
ehco "8. Generating fstab"
./scripts/base/8.\ Generating\ fstab
echo
echo "9. Changing to chroot"
./scripts/base/9.\ Changing\ to\ chroot
echo
echo "Unmounting partitions" #will execute after user exits chroot
./scripts/base/Unmounting\ partitions
echo
echo "You can reboot now and login as sarad."
