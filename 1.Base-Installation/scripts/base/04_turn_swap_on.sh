#!/bin/bash

#Note: It requires modification to prevent data loss

echo -e "\nTurning on swap partition\n"
#Change /dev/sda3 with your swap partition
swapon /dev/sda3
echo