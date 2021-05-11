#! /bin/bash

clear

# in this sh file, there's just a bunch of packages that i personally use.
sudo dpkg --add-architecture i386
sudo apt update
sudo apt-fast install desktop-base cantata gimp xscreensaver xserver-xorg-video-intel firmware-amd-graphics fonts-noto* arc-theme kdeconnect numix-icon-theme-circle breeze-cursor-theme steam caffeine conky flatpak plank xfce4-power-manager -y --no-install-recommends --no-install-suggests 
rm -rf ~/.config/openbox/*
mkdir ~/.config/openbox
cp -r openbox_custom/* ~/.config/openbox
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install adriconf
sudo apt-fast install -y openvpn dialog python3-pip python3-setuptools -y --no-install-recommends --no-install-suggests
sudo pip3 install protonvpn-cli
sudo apt update
sudo cp 50-mouse-acceleration.conf /usr/share/X11/xorg.conf.d/
git clone https://github.com/numixproject/numix-folders
echo 'deb http://download.opensuse.org/repositories/home:/ungoogled_chromium/Debian_Buster/ /' | sudo tee /etc/apt/sources.list.d/home-ungoogled_chromium.list > /dev/null
curl -s 'https://download.opensuse.org/repositories/home:/ungoogled_chromium/Debian_Buster/Release.key' | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home-ungoogled_chromium.gpg > /dev/null
sudo apt update
sudo apt-fast install -y ungoogled-chromium
