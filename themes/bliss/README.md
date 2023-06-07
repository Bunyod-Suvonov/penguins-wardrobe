# Bliss

This is a special theme, for Bliss Go a Linux XFCE installer for blissOS.

## Usage

`sudo eggs produce --theme /path/to/bliss`

Normally since it is complex for me to type in the whole theme path, I first find the path using `ls` and autocomplete, for example: `ls .wardrobe/theme/bliss/` or `ls penguins-wardrobe/theme/bliss/`, then I delete the `ls` command and add the real one: `sudo eggs produce --theme penguins-wardrobe/theme/bliss/`.

## custom final modules

cfm.yml is a yaml configuration file for custom final modules, executed by calamares or krill just before umount. 

They live in the theme and will be included on `/etc/calamares/settings.conf` just before umount. They are named `cfm-something` this is mandatory: krill will analyze settings.conf and will find them for the prefix: `cfm-`. Again, prefix `cfm-` is mandatory and can be named from the action they will do. for example: `cfm-data-img` and so on.

* cfm-install (skeleton)
* cfm-data-img (actually the only working)
* cfm-bootloader (skeleton)

cfm work on Debian, Ubuntu and Arch without any distinctions, they are just bash scripts and thanks to krill - extended lately to Arch - must to work on all these distros and derivated. 

cfm modules are copied to `/usr/lib/x86_64-linux-gnu/calamares/modules/` by the commands `eggs produce --theme ./wardrobe/vendors/bliss` or `eggs calamares --theme ./wardrobe/addons/bliss`.

You can find cfm.yml under ./theme/calamares on the theme, the real modules are inside ./theme/calamares/calamares-modules.
