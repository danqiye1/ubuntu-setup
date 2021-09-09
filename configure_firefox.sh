#!/bin/bash

echo "Lock firefox proxy"

sudo cp firefox-config/mozilla.cfg /usr/lib/firefox/
sudo cp firefox-config/local-settings.js /usr/lib/firefox/defaults/prefs/

echo "Restart firefox for configuration to take effect"
