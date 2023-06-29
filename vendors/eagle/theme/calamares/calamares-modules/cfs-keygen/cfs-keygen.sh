#!/bin/bash

CHROOT=$(mount | grep proc | grep calamares | awk '{print $3}' | sed -e "s#/proc##g")

# recreate keys
chroot $CHROOT ssh-keygen -A

# penguins-pve link
cp /usr/lib/penguins-eggs/addons/eggs/pve/artwork/eggs-pve.png $CHROOT/usr/share/icons/
PVE_LINK=/usr/lib/penguins-eggs/addons/eggs/pve/applications/eggs-pve.desktop
cp $PVE_LINK $CHROOT/usr/share/applications/
cp $PVE_LINK $CHROOT/home/*/Desktop

