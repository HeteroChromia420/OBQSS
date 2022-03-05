#! /bin/bash

clear

sudo apt update
sudo apt install curl aria2 wget ca-certificates --no-install-recommends --no-install-suggests -y
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
#Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
sudo apt-fast install lxsession-logout policykit-1 policykit-1-gnome --no-install-recommends --no-install-suggests -y
clear
sudo apt-fast install xfce4-power-manager git tumbler smplayer mpd mpv youtube-dl synaptic obconf lxrandr eject bash-completion gvfs* qt5-style-plugins qt5ct openbox compton package-update-indicator network-manager network-manager-gnome xinit epiphany-browser pcmanfm mousepad lxterminal xfce4-screenshooter lxappearance pulseaudio alsa-utils xfce4-notifyd pavucontrol engrampa mirage gmrun xserver-xorg xdg-user-dirs wpasupplicant htop lxpanel pnmixer arc-theme desktop-base cantata xscreensaver abiword gnumeric galculator flatpak plasma-discover plasma-discover-backend-flatpak preload --no-install-recommends --no-install-suggests -y
xdg-user-dirs-update
wget -qO- https://git.io/papirus-icon-theme-install | sh
git clone https://github.com/dglava/arc-openbox
mkdir ~/.themes
mkdir ~/.config
sudo cp 10-sysctl-tweaks.conf /etc/sysctl.d
cp -r config/* ~/.config
cp .mpdconf ~/
cp .gtkrc-2.0 ~/
cp -r arc-openbox/* ~/.themes
rm -rf arc-openbox
sudo cp -r wallpapers /home/
