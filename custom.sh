#! /bin/bash

clear

# in this sh file, there's just a bunch of packages that i personally use.
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install wget ffmpegthumbnailer fonts-noto* kdeconnect steam caffeine flatpak plank zram-tools -y --no-install-recommends --no-install-suggests 
rm -rf ~/.config/openbox/*
mkdir ~/.config/openbox
cp -r config/* ~/.config/
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install adriconf
sudo apt install -y openvpn network-manager-openvpn-gnome -y --no-install-recommends --no-install-suggests
sudo apt update
sudo cp 50-mouse-acceleration.conf /usr/share/X11/xorg.conf.d/
sudo apt purge --auto-remove epiphany-browser
sudo cp 69-sysctl-performance.conf /etc/sysctl.d/
echo "deb [arch=amd64] http://deb.librewolf.net bullseye main" | sudo tee /etc/apt/sources.list.d/librewolf.list

sudo wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg

sudo apt update

sudo apt install librewolf -y
clear
read -n 1 -s -r -p "Press any key to continue..."