#! /bin/sh

clear

sudo apt update
#Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
sudo apt install lightdm lxsession-logout policykit-1 policykit-1-gnome --no-install-recommends --no-install-suggests -y
clear
sudo apt install lxtask lightdm-gtk-greeter-settings gimp xfce4-power-manager git tumbler celluloid mpv youtube-dl synaptic obconf lxrandr eject bash-completion gvfs* qt5-gtk2-platformtheme qt5ct openbox compton package-update-indicator network-manager network-manager-gnome xinit epiphany-browser pcmanfm scite lxterminal xfce4-screenshooter lxappearance pulseaudio alsa-utils xfce4-notifyd pavucontrol engrampa ristretto gmrun xserver-xorg xdg-user-dirs wpasupplicant htop xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin arc-theme desktop-base quodlibet xscreensaver libreoffice papirus-icon-theme galculator flatpak preload --no-install-recommends --no-install-suggests -y
sudo apt install --install-recommends gnome-software gnome-software-plugin-flatpak -y
xdg-user-dirs-update
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
git clone https://github.com/dglava/arc-openbox
sudo apt purge --auto-remove unattended-upgrades -y
mkdir ~/.themes
mkdir ~/.config
cp -r config/* ~/.config
cp .gtkrc-2.0 ~/
cp -r arc-openbox/* ~/.themes
rm -rf arc-openbox
sudo cp -r wallpapers /home/
clear
echo "Process has completed."
read -n 1 -s -r -p "Press any key to continue..."
