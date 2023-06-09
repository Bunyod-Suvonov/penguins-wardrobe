# Bliss

This is a special theme, made for Bliss Go a Linux XFCE installer for blissOS.

## Usage

`sudo eggs produce --theme /path/to/bliss`

Normally since it is complex for me to type in the whole theme path, I first find the path using `ls` and autocomplete, for example: `ls .wardrobe/theme/bliss/` or `ls penguins-wardrobe/theme/bliss/`, then I delete the `ls` command and add the real one: `sudo eggs produce --theme penguins-wardrobe/theme/bliss/`.

## custom final steps

cfs.yml is a yaml configuration file for **custom final steps**, executed by calamares or krill just before umount. 

They live in the theme and will be included on `/etc/calamares/settings.conf` just before umount. They are named `cfs-something` this is mandatory: krill will analyze settings.conf and will find them for the prefix: `cfs-`. Again, prefix `cfs-` is mandatory and can be named from the action they will do. for example: `cfs-data-img` and so on.

* cfs-install 
* cfs-data-img
* cfs-bootloader

cfs work on Debian, Ubuntu and Arch without any distinctions, they are just bash scripts and thanks to calamares and krill - extended lately to Arch too - must to work on all these distros and derivated, giving a confortable GUI installation or a fast CLI (destructive) installation .

cfs modules are copied to `/usr/lib/x86_64-linux-gnu/calamares/modules/` by the commands `eggs produce --theme ./wardrobe/vendors/bliss` or `eggs calamares --theme ./wardrobe/vendors/bliss`.

You can find `cfs.yml` under the folder `calamares` of the theme. Calamares modules implementations are inside `calamares/calamares-modules`.
