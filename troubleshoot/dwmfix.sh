#!/bin/sh
name=$(echo $USER)
cd /home/$name/.local/src/dwm &&
sudo make clean install > /dev/null &&
echo 'done'
