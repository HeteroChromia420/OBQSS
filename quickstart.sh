#!/bin/bash

clearScreen(){
    clear
}

updateSystem(){
    sudo apt update
    clearScreen
}

installPackages(){
    #Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
    sudo apt install lightdm lxsession-logout policykit-1 policykit-1-gnome --no-install-recommends --no-install-suggests -y
    sudo apt install lxtask lightdm-gtk-greeter-settings gimp xfce4-power-manager git tumbler celluloid mpv youtube-dl synaptic obconf lxrandr eject bash-completion gvfs* qt5-gtk2-platformtheme qt5ct openbox picom package-update-indicator network-manager network-manager-gnome xinit epiphany-browser pcmanfm scite lxterminal xfce4-screenshooter lxappearance pulseaudio alsa-utils xfce4-notifyd pavucontrol engrampa mirage gmrun xserver-xorg xdg-user-dirs wpasupplicant htop xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin arc-theme desktop-base quodlibet xscreensaver libreoffice papirus-icon-theme galculator flatpak preload --no-install-recommends --no-install-suggests -y
    sudo apt install --install-recommends gnome-software gnome-software-plugin-flatpak -y
    xdg-user-dirs-update
    #And purge
    sudo apt purge --auto-remove unattended-upgrades snapd gnome-software-plugin-snap -y
    clearScreen
}

setupFlatpak(){
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    clearScreen
}

gitSetup(){
    [[ -a /bin/git ]] git clone https://github.com/dglava/arc-openbox || break
    [[ -d ~/.themes ]] mkdir ~/.themes
    [[ -d ~/.config ]] mkdir ~/.config
    cp -r config/* ~/.config
    cp .gtkrc-2.0 ~/
    cp -r arc-openbox/* ~/.themes
    rm -rf arc-openbox
    sudo cp -r wallpapers /home/
    clearScreen
}

updateSystem && installPackages && setupFlatpak && gitSetup && echo "All compents ran successfully!" || echo "Installer failed!"
echo "Process has completed."
read -n 1 -s -r -p "Press any key to continue..."
