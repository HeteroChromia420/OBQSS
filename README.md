# Openbox QuickStart Script

This Script includes a bunch of pre-configured files that will be used in the script, as well as the script itself.
This Script aims to allow users to streamline their installation of openbox on their Linux Distribution

# Ideology/Objectives

My Goal with the OpenBox QuickStart Script (or OBQSS for short) is to provide a configuration for openbox on debian that has a balance between ease of use and being lightweight.

## Requirements

For quickstart.sh exclusively: a system running Debian GNU/Linux (Or Distributions based on it, as quickstart.sh uses apt to obtain packages, and are expecting Debian's Package Names.)

For setup-postinst.sh: Any Linux System with bash installed. (bash is required as the shell script uses it as the shebang.)

## Usage
Do a clone of this repository, and then execute `quickstart.sh`. if unsure, run:

``git clone https://github.com/heterochromia420/obqss`` followed by ``cd obqss`` and ``bash quickstart.sh``
After running quickstart.sh, do not run `setup-postinst.sh` unless you're setting the openbox session for another user.

FOR EXPERTS:
if you aren't running quickstart.sh due to not running debian or a debian-based distribution, obtain the equivalent to the package names in `quickstart.sh`, you can then run `setup-postinst.sh`.
`setup-postinst.sh` runs a simplified version of `quickstart.sh` that only copies the items in the `config` folder to the user's `home` and `.config` folders.

## Notes

`youruser` is a just a example, replace it with your actual username.

### Battery Indicator

If your system lacks a battery, you might receive low battery notifications. To resolve this:

    Right Click on the start menu.
    Click on "Battery".
    Set "Alert if charge lower than" from 20% to 0%.
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

## What the quickstart script does install (Alongside Openbox itself)

Core Components

    SLiM: A lightweight display manager for logging in to your Openbox session.
    lxsession-logout: Provides options for logging out, shutting down, rebooting, etc.
    lxpolkit: A lightweight policykit agent for managing elevated privileges.

System Utilities & Management

    xfce4-power-manager: Power management tool for managing battery and power settings.
    nm-applet: Network Manager applet for managing network connections.
    btop: A system monitor and task manager with a detailed, interactive interface.
    xscreensaver: A screensaver and screen locking tool.

Panels, Menus, & Taskbars

    tint2: A customizable panel (or taskbar) for displaying open windows, system tray, and clock.
    jgmenu: A dynamic menu for accessing applications and settings.
    gsimplecal: A simple calendar application integrated with the panel, accessible by clicking the clock.

Utilities & Tools

    l3afpad: A lightweight text editor for quick edits.
    gmrun: A run dialog for launching applications.
    galculator: A simple calculator utility.
    lxrandr: Tool for managing monitor settings and resolution.
    obconf: GUI configuration tool for Openbox settings.
    lxappearance: Tool for customizing themes, icons, and fonts in GTK applications.
    qt5ct: Configuration tool for managing Qt5 application appearance.
    xcompmgr: A lightweight compositor for window effects like transparency and shadows.
    libnotify: A library for desktop notifications, used by various applications.

File Management

    pcmanfm: A lightweight file manager for managing files, folders, and desktop settings.
    ffmpegthumbnailer: Generates video thumbnails for file managers like PCManFM.
    tumbler: A thumbnail service used by file managers to generate previews for images, PDFs, etc.
    Mirage: An image viewer for viewing and managing image files.
    xarchiver: An archive manager for extracting and creating compressed files.

Network & Web

    epiphany: A lightweight web browser, also known as GNOME Web.
    xdg-desktop-portal-gtk: Provides support for flatpak applications, enabling desktop integration features.

Customization & Theming

    arc-theme: A popular and visually appealing theme for GTK and Openbox.
    papirus-icon-theme: A modern icon theme providing a consistent look across applications.

Multimedia & Screenshots

    pulseaudio: A sound server for managing audio playback.
    pnmixer: A volume control applet for managing audio levels.
    flameshot: A powerful screenshot tool with annotation features.

Notifications & Indicators

    dunst: A lightweight notification daemon for displaying on-screen notifications.
    caffeine and caffeine-indicator: A tool to prevent the screensaver from activating. it can be toggled via the icon in the panel.

Package Management

    flatpak: A system for managing applications in sandboxed environments.
    gnome-software: A graphical package manager for handling flatpak applications and repositories.

## What this script will not install

Video Players, Music Players, Office Suites, E-Mail Clients, Graphics/Design Tools, IDEs, Cloud Storage Intergration, or Gaming-Related Applications.

Why: I Believe that those kinds of applications should be up to user preference. I already equipped the end user with a graphical package manager for this exact purpose.
