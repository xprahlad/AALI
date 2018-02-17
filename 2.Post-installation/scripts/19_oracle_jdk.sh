#!/bin/bash

echo "Installing Oracle JDK"
packer -S --noconfirm --noedit -S jdk
echo