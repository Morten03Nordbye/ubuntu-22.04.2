#!/bin/bash

# Remove preinstalled version of Firefox
sudo snap remove firefox

# Update apt package index
sudo apt update

# Install Flatpak and Flathub repository
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Firefox, Thunderbird, Chromium, Slack, Obsidian, Remmina, and Visual Studio Code using Flatpak
flatpak install flathub org.mozilla.firefox -y
flatpak install flathub org.mozilla.thunderbird -y
flatpak install flathub org.chromium.Chromium -y
flatpak install flathub com.slack.Slack -y
flatpak install flathub md.obsidian.Obsidian -y
flatpak install flathub org.remmina.Remmina -y
flatpak install flathub com.visualstudio.code -y

# Install other packages using apt
sudo apt install flameshot libreoffice vim terminator nitrogen rofi i3 arandr -y

# Install Polybar (commented out)
#sudo apt install build-essential cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python3-sphinx libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev -y
#git clone https://github.com/polybar/polybar.git
#cd polybar && ./build.sh
#cd .. && rm -rf polybar
