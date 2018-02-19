#!/bin/bash

#Prevents failure of package installation if keys have been updated in repo

#Useful if old iso is used

echo -e "\nRefreshing keys\n"
pacman-key --refresh-keys
echo