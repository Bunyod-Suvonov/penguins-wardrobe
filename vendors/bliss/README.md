# Bliss

This is a special theme, for bliss-go a Linux installer for blissDS.

## Usage

If you download theme with: `eggs wardrobe get`, then `sudo eggs produce --theme bliss`

You can write the full path too: `sudo eggs produce --theme ./my-theme-bliss`

## calamares final settings **cfs**

As special theme, include `calamares final settings`

* cfs-install 
* cfs-data-img
* cfs-bootloader

cfs work actually on Arch, Debian and Ubuntu. They are copied to `/usr/lib/x86_64-linux-gnu/calamares/modules/` by the code in [focal.ts](https://github.com/pieroproietti/penguins-eggs/blob/4f1b9c537a2e182b5a5b89c09f22821e0f6195d0/src/classes/incubation/distros/focal.ts#L98) on penguins-eggs or in others places depending of the distro/codename.

cfs can be used with krill (CLI installer) too, and are evaluated from [krill-sequence.tsx](https://github.com/pieroproietti/penguins-eggs/blob/4f1b9c537a2e182b5a5b89c09f22821e0f6195d0/src/krill/krill-sequence.tsx#L630) on penguins-eggs.

You can find this modules inside the folder `./theme/calamares/calamares-modules` and will be copied under `/usr/lib/x86_64-linux-gnu/calamares/modules/` building an ISO using this theme.

Note: prefix `cfs-` is mandatory  and can be named from the action they do, for example `cfs-data-img`

# no more changes on settings.conf

cfs will be automatically included in standard /etc/calamares/settings.conf, and executed just before umount, so there is no need to change settings.conf.
