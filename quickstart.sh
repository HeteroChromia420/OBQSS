#!/bin/bash
clearScreen(){
    clear
}

#Update the system before installing anything, saves you the hedache afterwards...
updateSystem(){
    sudo apt upgrade | tee -a obqss-setup.log
    clearScreen
}

installPackages(){
    #TODO: Find Alternatives to lxsession-logout that work on openbox and don't depend on systemd.
    #Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
    sudo apt install lightdm lightdm-gtk lxsession-logout lxpolkit --no-install-recommends --no-install-suggests -y | tee -a obqss-setup.log
    sudo apt install xfce4-taskmanager caffeine ffmpegthumbnailer xfce4-power-manager git tumbler synaptic obconf lxrandr eject bash-completion gvfs* qt5-gtk2-platformtheme qt5ct openbox xcompmgr package-update-indicator network-manager network-manager-gnome xinit falkon pcmanfm mousepad xfce4-terminal flameshot lxappearance pipewire pipewire-pulse wireplumber alsa-utils xfce4-notifyd pavucontrol engrampa mirage gmrun xserver-xorg xdg-user-dirs wpasupplicant htop xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin arc-theme desktop-base xscreensaver papirus-icon-theme galculator flatpak preload fonts-noto* --no-install-recommends --no-install-suggests -y | tee -a obqss-setup.log
    sudo apt install --install-recommends plasma-discover plasma-discover-backend-flatpak -y | tee -a obqss-setup.log
    xdg-user-dirs-update | tee -a obqss-setup.log
    #And purge unwanted packages
    sudo apt purge --auto-remove unattended-upgrades snapd plasma-discover-backend-snap -y | tee -a obqss-setup.log
    clearScreen
}

setupFlatpak(){
    flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo | tee -a obqss-setup.log
    clearScreen
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
    sudo chmod a+rwx /home/shared
    clearScreen
}

updateSystem && installPackages && setupFlatpak && gitSetup && echo "Process has been completed. Feel free to check obqss-setup.log."
read -n 1 -s -r -p "Press any key to continue..."
