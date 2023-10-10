#!/bin/bash

#Update Script that is run via package update indicator, updates both flatpak and dpkg packages whenever there's a dpkg package update available. normally i would not want to use a full blown script for this kind of thing, but my hand got forced on that regard.
#The only reason i even have to do this is because of the run dialog for package-update-indicator not allowing to run more than one command. this is really silly otherwise. Thanks, i guess...

#Get to the meat of the script already, dammit!

sudo apt dist-upgrade --auto-remove --no-install-recommends
flatpak update
