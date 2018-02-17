#!/bin/bash

for file in scripts/*; do
    [ -f "$file" ] && [ -x "$file" ] && "$file"
done

echo "Arch Linux Setup Completed Successfuly!"
echo
echo "Please reboot the computer now."