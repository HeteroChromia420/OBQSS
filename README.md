# Openbox QuickStart Script

This Script includes a bunch of pre-configured files that will be used in the script, as well as the script itself.
This Script aims to allow users to streamline their installation of openbox on their Linux Distribution

# Ideology/Objectives

My Goal with the OpenBox QuickStart Script (or OBQSS for short) is to provide a configuration for openbox on debian that has a balance between ease of use and being lightweight.

## Requirements

For quickstart.sh exclusively: a system running Debian GNU/Linux (Or Distributions based on it, as quickstart.sh uses apt to obtain packages, and are expecting Debian's Package Names.)

For setup-postinst.sh: Any Linux System with bash installed. (Though if you haven't run quickstart.sh, you have to install the packages that quickstart.sh provides manually. bash is required as the shell script uses it as the shebang.)

## Usage
Do a clone of this repository, and then execute `quickstart.sh`. if unsure, run:
``git clone https://github.com/heterochromia420/obqss`` followed by ``cd obqss`` and ``bash quickstart.sh``
After running quickstart.sh, do not run `setup-postinst.sh` unless you're setting the openbox session for another user.

FOR EXPERTS:
if you aren't running quickstart.sh due to not running a debian-based distribution, obtain the equivalent to the package names in `quickstart.sh`, you can then run `setup-postinst.sh`.

## Notes

`youruser` is a just a example, replace it with your actual username.

### Battery Indicator

If your system lacks a battery, you might receive low battery notifications. To resolve this:

    Right Click on the start menu.
    Click on "Panel Items".
    In the "Elements Selected" section, click on "Battery".
    Click the right arrow icon between "Elements Selected" and "Elements Available".
    Press "OK" and close the "Tint2 Panel Themes" window.

### Startup

Openbox uses a script to automatically start up applications on startup. if you need to add/remove items to that list, the file will be at `/home/youruser/.config/openbox/autostart.sh`

You need to add a "&" after the command if it isn't the last item on the list.

### Keyboard Shortcuts
This Script includes the following *Default* Keyboard Shortcuts:

```cli
  Alt+E: Launches File Manager
  Alt+R: Launches Run Dialog
  Alt+Up: Increases Volume
  Alt+Down: Decreases Volume
  Alt+M: Toggles Mute
  Ctrl+Alt+L: Locks Screen
  Ctrl+Alt+Del: Launches Task Manager
  Ctrl+Alt+T: Launches Terminal
  Print: Takes a Screenshot
  Meta/Windows Key: Opens Menu
```

You can edit `/home/youruser/.config/openbox/rc.xml` to add/delete shortcuts. You can head to http://openbox.org/wiki/Help:Bindings if you require further documentation on how editing keyboard shortcuts work.
