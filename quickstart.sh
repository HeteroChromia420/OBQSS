#! /bin/bash

clear

sudo apt update
sudo apt install curl aria2 wget ca-certificates --no-install-recommends --no-install-suggests -y
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
#Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
sudo apt-fast install lightdm lxsession-logout policykit-1 policykit-1-gnome --no-install-recommends --no-install-suggests -y
clear
sudo apt-fast install lxtask lightdm-gtk-greeter-settings gimp xfce4-power-manager git tumbler celluloid mpd mpv youtube-dl synaptic obconf lxrandr eject bash-completion gvfs* qt5-gtk2-platformtheme qt5ct openbox picom package-update-indicator network-manager network-manager-gnome xinit epiphany-browser pcmanfm mousepad lxterminal xfce4-screenshooter lxappearance pulseaudio alsa-utils xfce4-notifyd pavucontrol engrampa mirage gmrun xserver-xorg xdg-user-dirs wpasupplicant htop xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin arc-theme desktop-base quodlibet xscreensaver abiword gnumeric galculator flatpak preload zram-tools --no-install-recommends --no-install-suggests -y
sudo apt-fast install --install-recommends gnome-software gnome-software-plugin-flatpak -y
xdg-user-dirs-update
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
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
