#!/bin/bash

CHROOT=$(mount | grep proc | grep calamares | awk '{print $3}' | sed -e "s#/proc##g")

# recreate keys
chroot $CHROOT ssh-keygen -A

# pve-link
cp ../../../../pve/applications/eggs-pve.desktop $CHROOT/usr/share/applications/

# pve-icon
cp ../../../../pve/artwork/eggs-pve.png $CHROOT/usr/share/applications/ $CHROOT/usr/share/icons/
