#!/bin/bash

echo "Adding locale"
#It adds en_US as locale
#add more if needed
echo >> /etc/locale.gen en_US.UTF-8 UTF-8
echo

echo "Generating locale"
locale-gen
echo
