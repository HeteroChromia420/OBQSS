#! /bin/bash

clear

sudo apt update
#Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
sudo apt install lightdm lxsession-logout policykit-1 policykit-1-gnome --no-install-recommends --no-install-suggests -y
clear
sudo apt install epiphany-browser gvfs* eject git lxappearance qt5ct qt5-gtk2-platformtheme htop obconf openbox tint2 pnmixer nitrogen network-manager network-manager-gnome xinit pcmanfm scite lxterminal pulseaudio alsa-utils dunst pavucontrol vim openbox-menu xserver-xorg xdg-user-dirs wpasupplicant preload --no-install-recommends --no-install-suggests -y
xdg-user-dirs-update
mkdir ~/.themes
mkdir ~/.config
sudo sed -i 's/evte/lxterminal/g' /usr/bin/obamenu
cp -r config_min/* ~/.config
rm -rf arc-openbox
sudo cp -r wallpapers /home/
clear
echo "Process has completed."
read -n 1 -s -r -p "Press any key to continue..."
