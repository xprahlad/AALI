#!/bin/bash

echo "Setting up Language"
#change if you need different language
#language must have been added to locale in previous script
echo >> /etc/locale.conf LANG=en_US.UTF-8
echo