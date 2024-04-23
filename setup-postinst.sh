#!/bin/bash

#This script should only be used on systems with the base system installed. this only copies the themes and configurations to the home folder of this user.
#It also sets up flathub for that user.

setupFlatpak(){
    flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
    clear
}

gitSetup(){
    git clone https://github.com/dglava/arc-openbox | tee -a obqss-setup.log
    mkdir ~/.themes | tee -a obqss-setup.log
    mkdir ~/.config | tee -a obqss-setup.log
    cp -r config/* ~/.config | tee -a obqss-setup.log
    cp .gtkrc-2.0 ~/ | tee -a obqss-setup.log
    cp -r arc-openbox/* ~/.themes | tee -a obqss-setup.log
    rm -rf arc-openbox | tee -a obqss-setup.log
    sudo cp -r shared /home/ | tee -a obqss-setup.log
    sudo cp -r config /home/shared | tee -a obqss-setup.log
    sudo cp setup-postinst.sh /home/shared | tee -a obqss-setup.log
    sudo chmod a+rx -R /home/shared | tee -a obqss-setup.log
    clear
}
 
setupFlatpak && gitSetup && echo "Process has been completed."
read -n 1 -s -r -p "Press any key to continue..."
