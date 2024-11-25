#!/bin/sh

#Update the system before installing anything, saves you the hedache afterwards...
updateSystem(){
    doas apk update  | tee -a obqss-setup.log
    doas apk upgrade | tee -a obqss-setup.log
    clear
}

installPackages(){
    #TODO: git clone the repos for gsimplecal, caffeine, pnmixer, lxappearance and obconf and compile them manually.
    echo "This Script Expects you to have ran 'setup-xorg-base'. If you have done so, you should be fine. Otherwise, Press Ctrl+C to abort."
    echo "You should also read the wiki page for setting up network-manager."
    read -n 1 -s -r -p "Press any key to continue..."
    doas apk add slim lxsession libnotify xdg-desktop-portal-gtk ffmpegthumbnailer xfce4-power-manager git tumbler arandr util-linux-misc fish gvfs-fuse gvfs-mtp openbox picom networkmanager networkmanager-tui network-manager-applet networkmanager-wifi badwolf pcmanfm mousepad lxterminal flameshot pulseaudio pamixer dunst pavucontrol xarchiver ristretto xdg-user-dirs btop tint2 jgmenu xscreensaver xscreensaver-extras flatpak font-noto-all rofi
    doas setup-devd udev
    xdg-user-dirs-update | tee -a obqss-setup.log
    #And purge unwanted packages
    doas apt purge --auto-remove unattended-upgrades snapd plasma-discover-backend-snap -y | tee -a obqss-setup.log
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
    doas cp -r shared /home/ | tee -a obqss-setup.log
    doas cp -r config /home/shared | tee -a obqss-setup.log
    doas cp setup-postinst.sh /home/shared | tee -a obqss-setup.log
    doas chmod a+rx -R /home/shared | tee -a obqss-setup.log
    clear
}

updateSystem && installPackages && setupFlatpak && gitSetup && echo "Process has been completed. Feel free to check obqss-setup.log."
read -n 1 -s -r -p "Press any key to continue..."
