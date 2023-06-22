#!/bin/bash

CHROOT=$(mount | grep proc | grep calamares | awk '{print $3}' | sed -e "s#/proc##g")
SOURCE_NAME="blissos"
echo "ccm-bbotloader"

# search ${CHROOT}/etc/grub.d/40_custom to see if we need to add the custom menu
if [ -f ${CHROOT}/etc/grub.d/40_custom ]; then
# Check for any mention of BlissOS in ${CHROOT}/etc/grub.d/40_custom
BLISS_MENTION=$(grep "BlissOS" ${CHROOT}/etc/grub.d/40_custom)

# If no mention of BlissOS in ${CHROOT}/etc/grub.d/40_custom
if [ -z "$BLISS_MENTION" ]; then

# GRUB_MENUS
# sudo cat >> ${CHROOT}/etc/grub.d/40_custom<< EOF
sudo tee -a ${CHROOT}/etc/grub.d/40_custom << EOF

menuentry "BlissOS (Default) w/ FFMPEG" { 
    set SOURCE_NAME="blissos" search --set=root --file /$SOURCE_NAME/kernel 
    linux /$SOURCE_NAME/kernel FFMPEG_CODEC=1 FFMPEG_PREFER_C2=1 quiet root=/dev/ram0 SRC=/$SOURCE_NAME  
    initrd /$SOURCE_NAME/initrd.img
}

menuentry "BlissOS (Intel) w/ FFMPEG" { 
    set SOURCE_NAME="blissos" search --set=root --file /$SOURCE_NAME/kernel 
    linux /$SOURCE_NAME/kernel HWC=drm_minigbm_celadon GRALLOC=minigbm FFMPEG_CODEC=1 FFMPEG_PREFER_C2=1 quiet root=/dev/ram0 SRC=/$SOURCE_NAME  
    initrd /$SOURCE_NAME/initrd.img
}

menuentry "BlissOS PC-Mode (Default) w/ FFMPEG" { 
    set SOURCE_NAME="blissos" search --set=root --file /$SOURCE_NAME/kernel 
    linux /$SOURCE_NAME/kernel  quiet root=/dev/ram0 SRC=/$SOURCE_NAME  
    initrd /$SOURCE_NAME/initrd.img
}

menuentry "BlissOS PC-Mode (Intel) w/ FFMPEG" { 
    set SOURCE_NAME="blissos" search --set=root --file /$SOURCE_NAME/kernel 
    linux /$SOURCE_NAME/kernel PC_MODE=1 HWC=drm_minigbm_celadon GRALLOC=minigbm FFMPEG_CODEC=1 FFMPEG_PREFER_C2=1 quiet root=/dev/ram0 SRC=/$SOURCE_NAME  
    initrd /$SOURCE_NAME/initrd.img
}

EOF

sudo update-grub

fi
fi
