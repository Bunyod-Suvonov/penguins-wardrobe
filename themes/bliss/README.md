# Bliss

This is a special theme, used with eggs for bliss go a Linux xfce installer for blissos

## Usage

`sudo eggs produce --theme /path/to/bliss`


## bliss calamares-modules
This is a special theme who include same specials calamares-modules:

* bliss-install
* bliss-data-img
* bliss-bootloader

To work this modules must to be build from `src/classes/incubation/distros/focal.ts` on penguins-eggs.

You can find this modules inside theme/calamares/calamares-modules, they will by copied on `/usr/lib/x86_64-linux-gnu/calamares/modules/` building the iso using this theme.

## bliss calamares settings.conf
Included under theme/calamares we have settings.yml, this file will be copied under /etc/calamares/settings.conf building the iso using this theme.

