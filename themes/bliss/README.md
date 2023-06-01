# Bliss

This is a special theme, for bliss go a Linux XFCE installer for blissos.

## Usage

`sudo eggs produce --theme /path/to/bliss`

## bliss calamares-modules

As special theme, include settings.conf and his particular calamares-modules. It's is based on the Ubuntu focal version and can't be used for Debian, becouse there is not just branding but logic too.

* bliss-install
* bliss-data-img
* bliss-bootloader

To work this modules must to be build from `src/classes/incubation/distros/focal.ts` on penguins-eggs.

You can find this modules inside theme/calamares/calamares-modules, they will by copied on `/usr/lib/x86_64-linux-gnu/calamares/modules/` building the iso using this theme.

## bliss calamares settings.conf

Included under theme/calamares we have settings.yml, this file will be copied under /etc/calamares/settings.conf building the iso using this theme.

