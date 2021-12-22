#! /bin/bash

clear

sudo apt update
sudo apt install curl aria2 wget ca-certificates --no-install-recommends --no-install-suggests -y
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
#Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
sudo apt-fast install lxsession-logout policykit-1 policykit-1-gnome --no-install-recommends --no-install-suggests -y
clear
sudo apt-fast install lightdm-gtk-greeter-settings tumbler smplayer mpd mpv youtube-dl synaptic obconf lxrandr eject bash-completion gvfs* qt5-style-plugins qt5ct openbox tint2 pnmixer nitrogen compton package-update-indicator network-manager network-manager-gnome xinit epiphany-browser pcmanfm mousepad lxterminal xfce4-screenshooter lxappearance pulseaudio alsa-utils dunst pavucontrol file-roller ristretto gmrun xserver-xorg xdg-user-dirs wpasupplicant vim htop --no-install-recommends --no-install-suggests -y
xdg-user-dirs-update
mkdir ~/.config
mkdir ~/.config/openbox
cp openbox/* ~/.config/openbox
cp .mpdconf ~/
sudo sed -i 's/evte/lxterminal/g' /usr/bin/obamenu
