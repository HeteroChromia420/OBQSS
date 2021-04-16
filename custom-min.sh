#! /bin/bash

clear

# in this sh file, there's just a bunch of packages that i personally use.
sudo dpkg --add-architecture i386
sudo apt update
sudo apt-fast install cantata mpd gimp xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin xscreensaver xserver-xorg-video-intel firmware-amd-graphics fonts-noto* redshift-gtk geoclue-2.0 arc-theme kdeconnect numix-icon-theme-circle breeze-cursor-theme steam caffeine conky flatpak plank xfce4-power-manager xfce4-notifyd -y --no-install-recommends --no-install-suggests 
rm -rf ~/.config/openbox/*
mkdir ~/.config/openbox
cp -r openbox_custom/* ~/.config/openbox
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install adriconf
sudo apt-fast install -y openvpn dialog python3-pip python3-setuptools -y --no-install-recommends --no-install-suggests
sudo pip3 install protonvpn-cli
sudo apt update
sudo apt purge --auto-remove tint2 pnmixer dunst audacious -y
sudo cp 50-mouse-acceleration.conf /usr/share/X11/xorg.conf.d/
cp .mpdconf ~/
git clone https://github.com/numixproject/numix-folders
