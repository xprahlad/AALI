#!/bin/bash

for file in scripts/base/*; do
    [ -f "$file" ] && [ -x "$file" ] && "$file"
done

echo "If unmounting succeeded, you can reboot and login as normal user."