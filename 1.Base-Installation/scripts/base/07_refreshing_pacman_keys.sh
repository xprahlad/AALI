#!/bin/bash

#Prevents failure of package installation if keys have been updated in repo

#Useful if old iso is used

echo "Refreshing keys"
pacman-key --refresh-keys
echo