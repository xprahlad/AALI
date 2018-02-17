#!/bin/bash

#Note: It requires modification to prevent data loss

echo "Turning on swap partition"
#Change /dev/sda6 with your swap partition
swapon /dev/sda6
echo