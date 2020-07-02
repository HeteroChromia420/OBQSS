#! /bin/bash

clear

# in this sh file, there's just a bunch of packages that i personally use.
sudo dpkg --add-architecture i386
sudo apt update
sudo apt-fast install fonts-noto* xscreensaver* arc-theme numix-icon-theme-circle kdeconnect oxygencursors steam lightdm-gtk-greeter-settings caffeine conky xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin flatpak redshift-gtk -y
rm ~/.config/openbox/autostart.sh
cp .custom.sh ~/.config/openbox/autostart.sh
sudo apt purge --auto-remove tint2 pnmixer
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install adriconf
sudo flatpak install freetube
sudo flatpak install retroarch
sudo apt-fast install -y openvpn dialog python3-pip python3-setuptools
sudo pip3 install protonvpn-cli
echo "Done.Press any key to exit..."
read -n 1 -s
exit 

