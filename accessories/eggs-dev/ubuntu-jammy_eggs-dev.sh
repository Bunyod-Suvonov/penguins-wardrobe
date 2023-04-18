#!/bin/bash
clear
echo "ubuntu-jammy_eggs-dev"
echo ""

if [[ $EUID -ne 0 ]]; then
   printf "%s need to run with root privileges. \nPlease, prefix it with sudo\n", "$0"
   exit 1
fi

# sources_list_d
curl -fsSL https://deb.nodesource.com/setup_19.x | bash - 

# install 
apt-get install -y \
    nodejs

# snap install
sudo snap install \
    code --classic

# install pnpm with npm
npm install pnpm -g

../../scripts/add_g4.sh

# lacks: