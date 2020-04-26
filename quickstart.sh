#! /bin/bash

clear

echo "Welcome to IncognitoChromia's OpenBox QuickStart Script! Press Any Key To Continue."
read -n 1 -s
echo "This Script will Set Up, For the User, a basic openbox session and configuration for said session."
echo "Here's The Shortcuts that will be set up for the user:"
echo "Alt+Up -> Increases Volume"
echo "Alt+Down -> Decreases Volume"
echo "PrintScreen -> Runs Screenshot Tool"
echo "Alt+E -> Opens File Manager"
echo "Alt+R -> Opens Run Dialog"
echo "Ctrl+Alt+T -> Opens Terminal"
echo "Ctrl+Alt+Delete -> Opens a Task Manager"
echo "You can edit any of the shortcuts by editing ~/.config/openbox/rc.xml"
echo "Press Any Key to continue."
read -n 1 -s
echo "This Currently only supports Linux Distros That use Apt as their package manager. Other Users will have to obtain their packages manually."
echo "If you are running Apt on your system, or don't mind fetching the packages for yourself, press any key to continue, otherwise press ctrl+c  to abort this script."
read -n 1 -s
clear
echo "we'll also install apt-fast, to allow a faster installation of these packages."
sudo apt update
sudo apt install -y curl aria2
clear
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
echo "We've set up apt-fast. proceeding with the install..."
read -n 1 -s
echo "now, you will recieve a password prompt to run the package manager, it will install some packages for you."
sudo dpkg --add-architecture i386
sudo apt update
sudo apt-fast install -y openbox obmenu tint2 arc-theme papirus-icon-theme nitrogen compton pnmixer package-update-indicator cmst policykit-1-gnome xinit firefox-esr slim pcmanfm scite lxterminal xfce4-screenshooter lxappearance pulseaudio alsa-utils dunst pavucontrol file-roller ristretto htop steam kdeconnect conky gmrun
clear
echo "All of the packages have been installed."
echo "now moving all of the configuration files included with this script into their proper places."
echo "if you see a few "file exists" messages, you can ignore them. it's the script making sure the folders exist."
echo "press any key to continue."
read -n 1 -s
mkdir ~/.config
mkdir ~/.config/openbox
mv openbox/* ~/.config/openbox
echo "done! all you have to do is to restart your computer and you should have a usable openbox system!"
echo "to open the menu, right-click on the task bar."
echo "thank you for using this script."
echo "press any key to exit"
read -n 1 -s
exit 
