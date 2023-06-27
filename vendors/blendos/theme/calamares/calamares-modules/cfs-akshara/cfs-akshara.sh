#!/bin/bash

CHROOT=$(mount | grep proc | grep calamares | awk '{print $3}' | sed -e "s#/proc##g")
tee -a ${CHROOT}/etc/grub.d/40_custom << EOF
MODULES=""
BINARIES=""
FILES=""
HOOKS="base udev aksgara plymouth autodetect modconf block keyboard keymap consolefont filesystems fsck"
COMPRESSION="zstd"

EOF

chroot $CHROOT mkinitcpio -g /boot/initramfs-linux-zen.img