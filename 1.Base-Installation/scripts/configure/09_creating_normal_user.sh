#!/bin/bash

echo -e "\nCreating normal user\n"
#replace "sarad" with your username
useradd -m -G wheel -s /bin/bash prahlad
echo