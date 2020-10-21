#! /bin/bash

clear

# in this sh file, there's just a bunch of packages that i personally use.
sudo dpkg --add-architecture i386
sudo apt update
sudo apt-fast install fonts-noto* arc-theme kdeconnect papirus-icon-theme breeze-cursor-theme steam slim caffeine conky flatpak plank -y --no-install-recommends --no-install-suggests
rm ~/.config/openbox/autostart.sh
cp .custom.sh ~/.config/openbox/autostart.sh
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install adriconf
sudo apt-fast install -y openvpn dialog python3-pip python3-setuptools -y --no-install-recommends --no-install-suggests
sudo pip3 install protonvpn-cli
echo "Done.Press any key to exit..."
read -n 1 -s
exit 
