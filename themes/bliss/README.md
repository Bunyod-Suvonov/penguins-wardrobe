# Bliss

This is a special theme, for bliss go a Linux XFCE installer for blissos.

## Usage

`sudo eggs produce --theme /path/to/bliss`

Normally since it is complex for me to type in the whole theme path, I first find the path using `ls` and autocomplete, for example: `ls .wardrobe/theme/bliss/` or `ls .penguins-wardrobe/theme/bliss`, then I delete the `ls` command and add the real one: `sudo eggs produce --theme .penguins-wardrobe/theme/bliss`

## custom calamares-modules **ccm**

As special theme, include `settings.conf` and custom calamares-modules (ccm). It's is based on the Ubuntu focal version and can't be used for Debian, becouse there is not just branding but logic too.

* ccm-install (skeleton)
* ccm-data-img (actually the only implemented)
* ccm-bootloader (skeleton)

ccm work actually just on Ubuntu and Debian: they are copied to `/usr/lib/x86_64-linux-gnu/calamares/modules/` by the code in [focal.ts](https://github.com/pieroproietti/penguins-eggs/blob/4f1b9c537a2e182b5a5b89c09f22821e0f6195d0/src/classes/incubation/distros/focal.ts#L98) on penguins-eggs. 

They can be used with krill (CLI installer) too, and are evaluated from [krill-sequence.tsx](https://github.com/pieroproietti/penguins-eggs/blob/4f1b9c537a2e182b5a5b89c09f22821e0f6195d0/src/krill/krill-sequence.tsx#L630) on penguins-eggs.

You can find this modules inside ./theme/calamares/calamares-modules, they will by copied on `/usr/lib/x86_64-linux-gnu/calamares/modules/` building the iso using this theme.

prefix `ccm-` is mandatory and can be named from the action they, for example `ccm-data-img`

## bliss calamares settings.conf

Included under this theme on `theme/calamares` we have `settings.yml`, this file will be copied under `/etc/calamares/settings.conf` building the iso using this theme.

NOTE: 

I'm working now to remove the need to have a complete settings.yml but just a short cfs.yml

Custom Final Steps will be placed on settings.conf

But it's just an idea for now...


