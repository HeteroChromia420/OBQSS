#!/bin/bash

#Update the system before installing anything, saves you the hedache afterwards...
updateSystem(){
    sudo apt upgrade | tee -a obqss-setup.log
    clear
}

installPackages(){
    #TODO: Find Alternatives to lxsession-logout that work on openbox and don't depend on systemd.
    #Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
    sudo apt install slim lxsession-logout lxpolkit --no-install-recommends --no-install-suggests -y | tee -a obqss-setup.log
    sudo apt install gsimplecal libnotify-bin xdg-desktop-portal-gtk caffeine ffmpegthumbnailer xfce4-power-manager git tumbler synaptic obconf lxrandr eject bash-completion gvfs* qt5-gtk2-platformtheme qt5ct openbox xcompmgr package-update-indicator network-manager network-manager-gnome xinit falkon pcmanfm l3afpad lxterminal flameshot lxappearance pulseaudio pamixer dunst pavucontrol engrampa mirage gmrun xserver-xorg xdg-user-dirs wpasupplicant btop tint2 jgmenu pnmixer arc-theme desktop-base xscreensaver papirus-icon-theme galculator flatpak fonts-noto* --no-install-recommends --no-install-suggests -y | tee -a obqss-setup.log
    sudo apt install --no-install-recommends plasma-discover plasma-discover-backend-flatpak appstream -y | tee -a obqss-setup.log
    xdg-user-dirs-update | tee -a obqss-setup.log
    #And purge unwanted packages
    sudo apt purge --auto-remove unattended-upgrades snapd plasma-discover-backend-snap -y | tee -a obqss-setup.log
    clear
}

setupFlatpak(){
    flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo | tee -a obqss-setup.log
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

updateSystem && installPackages && setupFlatpak && gitSetup && echo "Process has been completed. Feel free to check obqss-setup.log."
read -n 1 -s -r -p "Press any key to continue..."
