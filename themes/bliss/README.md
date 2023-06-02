# Bliss

This is a special theme, for bliss go a Linux XFCE installer for blissos.

## Usage

`sudo eggs produce --theme /path/to/bliss`

## ccm Custom calamares-modules

As special theme, include settings.conf and custom calamares-modules (ccm). It's is based on the Ubuntu focal version and can't be used for Debian, becouse there is not just branding but logic too.

* ccm-install
* ccm-data-img
* ccm-bootloader

To work ccm definition must to be included on `src/classes/incubation/distros/focal.ts` on penguins-eggs. 

To use ccm with krill (CLI installer) we must to be included on `/src/krill/krill-sequence.tsx`.

You can find this modules inside theme/calamares/calamares-modules, they will by copied on `/usr/lib/x86_64-linux-gnu/calamares/modules/` building the iso using this theme.

## bliss calamares settings.conf

Included under theme/calamares we have settings.yml, this file will be copied under /etc/calamares/settings.conf building the iso using this theme.

