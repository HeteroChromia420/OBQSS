#! /bin/bash

clear

echo "Welcome to NiGHTLY'S OpenBox Removal Script! Press Any Key To Continue."
read -n 1 -s
echo "This Script will Remove, For the User, the basic openbox session and configuration for said session set up by the quickstart script"
echo "Press Any Key to continue."
read -n 1 -s
echo "This Currently only supports Linux Distros That use Apt as their package manager. Other Users will have to remove their packages manually."
echo "If you are running Apt on your system, or don't mind removing the packages for yourself, press any key to continue, otherwise press ctrl+c  to abort this script."
read -n 1 -s
clear
echo "now, you will recieve a password prompt to run the package manager, it will remove some packages for you."
sudo apt purge --auto-remove -y openbox obmenu tint2 arc-theme papirus-icon-theme nitrogen compton pnmixer package-update-indicator cmst policykit-1-gnome xinit firefox-esr slim pcmanfm scite lxterminal xfce4-screenshooter lxappearance pulseaudio alsa-utils dunst pavucontrol file-roller smplayer ristretto htop smtube
clear
echo "All of the packages have been removed."
rm -rf ~/.config/openbox
echo "done!"
echo "thank you for using this script."
echo "press any key to exit"
read -n 1 -s
exit 
