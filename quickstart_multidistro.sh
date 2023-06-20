#!/bin/bash
clearScreen(){
    clear
}

updateSystem(){
	detectDistro &&
	//TODO: Write Logic Segment to determine what Variant of the script to run.
}

detectDistro(){
	//TODO: Write Code to detect What Kind of Distro you are running.	
}

updateSystemDebian(){
    sudo apt update | tee -a obqss-setup.log
    sudo apt upgrade -y | tee -a obqss-setup.log
    clearScreen
}

updateSystemAlpine(){
	//TODO: Write Function
}

updateSystemFreeBSD(){
	//TODO: Write Function
}

installPackages(){
	//TODO: Write Logic Segment to determine what Variant of the script to run.
}


installPackagesDebian(){
    
    #TODO: Find Alternatives to lxsession-logout that work on openbox and don't depend on systemd. 
    #Installing policykit-1-gnome first, then lxsession-logout should fix problems with devuan...
    sudo apt install lightdm lxsession-logout lxpolkit --no-install-recommends --no-install-suggests -y | tee -a obqss-setup.log
    sudo apt install caffeine ffmpegthumbnailer lightdm-gtk-greeter-settings xfce4-power-manager git tumbler synaptic obconf lxrandr eject bash-completion gvfs* qt5-gtk2-platformtheme qt5ct openbox xcompmgr package-update-indicator network-manager network-manager-gnome xinit falkon thunar mousepad xfce4-terminal flameshot lxappearance pulseaudio alsa-utils dunst pavucontrol engrampa mirage gmrun xserver-xorg xdg-user-dirs wpasupplicant htop xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin arc-theme desktop-base xscreensaver papirus-icon-theme galculator flatpak preload fonts-noto* --no-install-recommends --no-install-suggests -y | tee -a obqss-setup.log
    sudo apt install --install-recommends gnome-software gnome-software-plugin-flatpak -y | tee -a obqss-setup.log
    xdg-user-dirs-update | tee -a obqss-setup.log
    #And purge unwanted packages
    sudo apt purge --auto-remove unattended-upgrades snapd gnome-software-plugin-snap -y | tee -a obqss-setup.log
    clearScreen
}

installPackagesAlpine(){
	//TODO: Write Function
}

installPackagesFreeBSD(){
	//TODO: Write Function
}


setupFlatpak(){
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo | tee -a obqss-setup.log
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
    sudo cp -r wallpapers /home/ | tee -a obqss-setup.log
    clearScreen
}

updateSystem && installPackages && setupFlatpak && gitSetup && echo "All components are installed successfully! Feel free to check obqss-setup.log." || echo "One or more components failed to install. Please check obqss-setup.log."
echo "Process has completed."
read -n 1 -s -r -p "Press any key to continue..."
