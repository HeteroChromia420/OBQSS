#! /bin/bash

clear

# in this sh file, there's just a bunch of packages that i personally use.
sudo dpkg --add-architecture i386
sudo apt update
sudo apt-fast install fonts-noto* xscreensaver* arc-theme papirus-icon-theme driconf kdeconnect oxygencursors steam plank lightdm-gtk-greeter-settings
mv .custom.sh ~/.config/openbox/startup.sh
echo "Done.Press any key to exit..."
read -n 1 -s
exit 

