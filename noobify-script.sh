#Noobify Session, Adds XFCE Panel, as well as compile dependencies for dockbarx, then compiles dockbarx.
sudo apt-fast install -y --no-install-recommends --no-install-suggests gir1.2-keybinder-3.0 gir1.2-pango-1.0 gir1.2-wnck-3.0 python3-cairo python3-dbus python3-distutils python3-gi python3-gi-cairo python3-pil python3-polib python3-xdg python3-xlib gir1.2-glib-2.0 glib-2.0-dev libglib2.0-dev valac libgtk-3-dev libxfce4panel-2.0-dev libxfconf-0-dev gcc xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin
git clone https://github.com/M7S/dockbarx.git
cd dockbarx
sudo ./setup.py install
cd ..
git clone https://github.com/M7S/xfce4-dockbarx-plugin.git
cd xfce4-dockbarx-plugin
./waf configure --prefix=/usr
./waf build
sudo ./waf install
cd ..
rm -rf dockbarx
rm -rf xfce4-dockbarx-plugin 
rm ~/.config/openbox/autostart.sh
cp .custom.sh ~/.config/openbox/autostart.sh
echo "Done.Press any key to exit..."
read -n 1 -s
exit 
