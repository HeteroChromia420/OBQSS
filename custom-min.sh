#! /bin/bash

clear

# in this sh file, there's just a bunch of packages that i personally use.
sudo dpkg --add-architecture i386
sudo apt update
sudo apt-fast install lightdm-gtk-greeter-settings xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin xfce4-notifyd xscreensaver xserver-xorg-video-intel firmware-amd-graphics fonts-noto* redshift-gtk geoclue-2.0 arc-theme kdeconnect papirus-icon-theme breeze-cursor-theme steam caffeine conky flatpak plank xfce4-power-manager -y --no-install-recommends --no-install-suggests
rm ~/.config/openbox/autostart.sh
cp .custom.sh ~/.config/openbox/autostart.sh
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install adriconf
sudo apt-fast install -y openvpn dialog python3-pip python3-setuptools -y --no-install-recommends --no-install-suggests
sudo pip3 install protonvpn-cli
echo 'deb http://download.opensuse.org/repositories/home:/ungoogled_chromium/Debian_Buster/ /' | sudo tee /etc/apt/sources.list.d/home-ungoogled_chromium.list > /dev/null
curl -s 'https://download.opensuse.org/repositories/home:/ungoogled_chromium/Debian_Buster/Release.key' | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home-ungoogled_chromium.gpg > /dev/null
sudo apt update
sudo apt-fast install -y --no-install-recommends --no-install-suggests ungoogled-chromium ungoogled-chromium-sandbox
sudo apt purge --auto-remove firefox-esr tint2 pnmixer dunst -y
