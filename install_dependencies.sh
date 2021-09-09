#!/bin/bash

echo "Installing exam dependencies..."
sudo apt install -y recordmydesktop
sudo apt install -y git ttyd tmux vim

echo "Installing JAVA"
sudo apt install -y openjdk-15-jdk-headless
