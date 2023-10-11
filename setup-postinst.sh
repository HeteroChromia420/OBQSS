#!/bin/bash

#This script should only be used on systems with the base system installed. this only copies the themes and configurations to the home folder of this user.
#It also sets up flathub for that user.

setupFlatpak(){
    flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
    clear
}

gitSetup(){
    git clone https://github.com/dglava/arc-openbox
    mkdir ~/.themes
    mkdir ~/.config
    cp -r config/* ~/.config
    cp .gtkrc-2.0 ~/
    cp -r arc-openbox/* ~/.themes
    rm -rf arc-openbox
    clear
}
 
setupFlatpak && gitSetup && echo "Process has been completed."
read -n 1 -s -r -p "Press any key to continue..."
