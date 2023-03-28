#!/bin/bash

# Upgrade system
sudo apt update && sudo apt upgrade -y

# Remove preinstalled version of Firefox
sudo snap remove firefox

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

# Install other packages using apt
sudo apt install flameshot libreoffice vim nitrogen rofi i3 arandr terminator python3-pip network-manager-openconnect-gnome -y
# Install modules needed for OS-Script
pip3 install beautifulsoup4 lxml


# Install Polybar
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y
git clone https://github.com/polybar/polybar.git
cd polybar && ./build.sh
cd .. && rm -rf polybar

# Install Papirus icon theme
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt update
sudo apt install papirus-icon-theme -y

# Set Papirus as the default icon theme
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

# Set Terminator as the default terminal emulator
sudo update-alternatives --config x-terminal-emulator
