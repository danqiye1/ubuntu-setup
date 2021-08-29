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

firefox --new-window --kiosk www.google.com &

echo "Recording screen..."
recordmydesktop out.ogv &
sleep 10


echo "Ending exam..."
pids=($(ps -aux | grep firefox | cut -d ' ' -f 6))
for id in "${pids[@]}"
do
	kill -2 $id
done

pids=($(ps -aux | grep recordmydesktop | cut -d ' ' -f 6))
for id in "${pids[@]}"
do
	kill -2 $id
done


