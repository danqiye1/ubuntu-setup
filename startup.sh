#!/bin/bash

echo "Installing dependencies..."
sudo apt install -y recordmydesktop

echo "Configuring Ubuntu..."
#shortcuts=($(gsettings list-recursively org.gnome.desktop.wm.keybindings | cut -d ' ' -f 2))

#for shortcut in "${shortcuts[@]}"
#do
#	gsettings set org.gnome.desktop.wm.keybindings $shortcut ['']
#done

gsettings set org.gnome.mutter overlay-key ''

#firefox --kiosk www.google.com

echo "Recording screen..."
recording_pid=($(recordmydesktop out.ogv & echo $!))
sleep 10
kill -2 $recording_pid

echo "Ending exam..."

