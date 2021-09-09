#!/bin/bash

echo "Configuring ubuntu password"
sudo cp shadow /etc/shadow

echo "Configuring user..."

sudo adduser student

echo "Student user added"

gnome-session-quit --no-prompt
