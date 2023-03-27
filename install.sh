#!/bin/bash

# Install required packages
sudo apt update
sudo apt install firefox flameshot arandr thunderbird chromium slack-desktop libreoffice vim i3 terminator nitrogen polybar remmina rofi -y

# Clean up apt cache
sudo apt clean
