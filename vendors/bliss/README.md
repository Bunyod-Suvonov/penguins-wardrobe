# Bliss

This is a special theme, for bliss-go a Linux installer for blissDS.

## Usage

If you download theme with: `eggs wardrobe get`, then `sudo eggs produce --theme bliss`

but you can write the path too: `sudo eggs produce --theme ./my-theme-bliss`

Normally since it is complex for me to type in the whole theme path, I first find the path using `ls` and autocomplete, for example: `ls .wardrobe/theme/bliss/` or `ls .penguins-wardrobe/theme/bliss`, then I delete the `ls` command and add the real one: `sudo eggs produce --theme .penguins-wardrobe/theme/bliss`

## calamares final settings **cfs**

As special theme, include `calamares final settings`

* cfs-install 
* cfs-data-img
* cfs-bootloader

cfs work actually on Arch, Debian and Ubuntu: they are copied to `/usr/lib/x86_64-linux-gnu/calamares/modules/` by the code in [focal.ts](https://github.com/pieroproietti/penguins-eggs/blob/4f1b9c537a2e182b5a5b89c09f22821e0f6195d0/src/classes/incubation/distros/focal.ts#L98) on penguins-eggs. 

They can be used with krill (CLI installer) too, and are evaluated from [krill-sequence.tsx](https://github.com/pieroproietti/penguins-eggs/blob/4f1b9c537a2e182b5a5b89c09f22821e0f6195d0/src/krill/krill-sequence.tsx#L630) on penguins-eggs.

You can find this modules inside ./theme/calamares/calamares-modules, they will by copied on `/usr/lib/x86_64-linux-gnu/calamares/modules/` building the iso using this theme.

prefix `cfs-` is mandatory and can be named from the action they, for example `cfs-data-img`

# no more changes on settings.conf

cfs will be automatically included in standard /etc/calamares/settings.conf, and executed just before umount.
