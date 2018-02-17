#!/bin/bash

echo "Creating normal user"
#replace "sarad" with your username
useradd -m -G wheel -s /bin/bash sarad
echo