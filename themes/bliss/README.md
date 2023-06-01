# Bliss

This is a special theme, used with eggs for bliss go a Linux xfce installer for blissos

## Usage

`sudo eggs produce --theme /path/to/bliss`


## bliss calamares-modules
This is a special theme who include same special calamares-modules:

* bliss-install
* bliss-data-img
* bliss-bootloader


You can find this modules inside theme/calamares/calamares-modules, they will by copied on `/usr/lib/x86_64-linux-gnu/calamares/modules/` building the iso using this theme.

## bliss calamares settings.conf
Included under theme/calamares we have settings.yml, this file will be copied under /etc/calamares/settings.conf building the iso using this theme.

