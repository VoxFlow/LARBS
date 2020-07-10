#!/bin/sh

pamixerinstall() {
	 [ -f "/usr/local/bin/$1" ] || (
	 dialog --infobox "Installing \"$1\", pulseaudio command line mixer..." 4 50
	 cd /tmp || exit
	 rm -rf /tmp/"$1"*
         git clone https://github.com/cdemoulins/pamixer.git &&
	 cd "$1"
	 yes | sudo make clean install >/dev/null 2>&1 #Added "yes" so it won't hung'
	 echo 'Done!') || return ;}

pamixerinstall pamixer || exit
