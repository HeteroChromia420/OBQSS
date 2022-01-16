# Openbox QuickStart Script

This Script includes a bunch of pre-configured files that will be used in the script, as well as the script itself.
This Script aims to allow users to streamline their installation of openbox on their debian (or debian-based) distribution.

## Usage
To use this repository effectively on a minimal install of debian, install the "git" package using apt and do a clone of this repository.

If you aren't sure, issue the following in your terminal:
```cli
git clone https://github.com/heterochromia420/OBQSS
```

## Notes

youruser is a just a example, replace it with your actual username.

### Startup

Openbox uses a script to automatically start up applications on startup. if you need to add/remove items to that list, the file will be at /home/youruser/.config/openbox/autostart.sh

You need to add a "&" after the command if it isn't the last item on the list.

### Keyboard Shortcuts
This Script includes the following *Default* Keyboard Shortcuts:

```cli
  Alt+E: Launches File Manager
  Alt+R: Launches Run Dialog
  Alt+Up: Increases Volume
  Alt+Down: Decreases Volume
  Ctrl+Alt+Del: Launches Task Manager
  Ctrl+Alt+T: Launches Terminal
  Print: Takes a Full Screen Screenshot
  Shift+Print: Launches Xfce4-screenshooter
  Meta/Windows Key: Opens the Start Menu
```

You can edit /home/youruser/.config/openbox/rc.xml to add/delete shortcuts.
