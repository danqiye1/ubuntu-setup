#!/bin/bash

echo "Configuring Ubuntu shortcuts"
shortcuts=($(gsettings list-recursively org.gnome.desktop.wm.keybindings | cut -d ' ' -f 2))

for shortcut in "${shortcuts[@]}"
do
       gsettings set org.gnome.desktop.wm.keybindings $shortcut ['']
done

shortcuts=($(gsettings list-recursively org.gnome.shell.keybindings | cut -d ' ' -f 2))
for shortcut in "${shortcuts[@]}"
do
       gsettings set org.gnome.shell.keybindings $shortcut ['']
done

gsettings set org.gnome.mutter overlay-key ''

echo "Shortcuts configured"
