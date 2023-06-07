#!/bin/bash

CHROOT=$(mount | grep proc | grep calamares | awk '{print $3}' | sed -e "s#/proc##g")

echo "cfs-install"

SCRIPT_PATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SOURCE_NAME="blissos"

if [ ! -d "/media/iso" ]; then
    echo "creating /media/iso"
    mkdir -p /media/iso
else
	echo "/media/iso folder found"
fi
mount /dev/sdb1 /media/iso
ISO_PATH=/media/iso

# First, we check for a .iso file in /updates/blissos 
# If found we use that as the path to the .iso file
if [ -f "$/updates/blissos/*.iso" ]; then
    # find newest .iso in there
    iso_path=$(ls -t $CHROOT/updates/blissos/*.iso | head -1)
    echo "Using $iso_path as the path to the .iso file"
    ISO_PATH=$iso_path
fi

# Check to see if we have a /blissos/ folder already
if [ ! -d "$CHROOT/blissos" ]; then
    echo "Folder already exists"
    mkdir -p $CHROOT/blissos
else
	echo "$CHROOT/blissos folder found"
fi

# Mount the .iso file
echo "Mounting .iso file..."
mkdir -p /mnt/iso
mount -o loop $ISO_PATH /mnt/iso

# Check the mounted .iso file for a system.efs file
if [ -f "/mnt/iso/system.efs" ]; then
	echo "EFS system found"
    #Mount the system.efs file
    mkdir -p /mnt/efs
    mount -o loop /mnt/iso/system.efs /mnt/efs
    # copy the syste,.img from inside the mounted system.efs file to /blissos
    cp /mnt/efs/system.img $CHROOT/blissos/
    # unmount the system.efs file
    umount /mnt/efs
elif [ -f "/mnt/iso/system.sfs" ]; then
	echo "SFS system found"
    #Mount the system.sfs file
    mkdir -p /mnt/sfs
    mount -o loop /mnt/iso/system.sfs /mnt/sfs
    # copy the syste,.img from inside the mounted system.sfs file to /blissos
    cp /mnt/sfs/system.img $CHROOT/blissos/
    # unmount the system.sfs file
    umount /mnt/sfs
fi
if [ ! -f "/blissos/system.img" ]; then
	echo "Somethings wrong, exiting"
	exit 1
fi

# Copy the initrd.img and kernel files to /blissos
cp /mnt/iso/initrd.img $CHROOT/blissos/initrd.img
cp /mnt/iso/kernel $CHROOT/blissos/kernel

# unmount the iso file
umount /mnt/iso


echo "All set. Thanks for installing."
