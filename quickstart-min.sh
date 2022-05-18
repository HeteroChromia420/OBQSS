#! /bin/bash

clear

sudo apt update
sudo apt install curl aria2 wget ca-certificates --no-install-recommends --no-install-suggests -y
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
#Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
sudo apt-fast install lightdm lxsession-logout --no-install-recommends --no-install-suggests -y
clear
sudo apt-fast install epiphany-browser gvfs* eject git lxappearance qt5ct qt5-gtk2-platformtheme htop obconf openbox tint2 pnmixer nitrogen network-manager network-manager-gnome xinit pcmanfm mousepad lxterminal pulseaudio alsa-utils dunst pavucontrol vim openbox-menu xserver-xorg xdg-user-dirs wpasupplicant preload zram-tools --no-install-recommends --no-install-suggests -y
xdg-user-dirs-update
mkdir ~/.themes
mkdir ~/.config
sudo sed -i 's/evte/lxterminal/g' /usr/bin/obamenu
cp -r config_min/* ~/.config
rm -rf arc-openbox
sudo cp -r wallpapers /home/
