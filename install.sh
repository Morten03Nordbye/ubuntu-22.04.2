#!/bin/bash

# Add Visual Studio Code repository key and repository
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
rm packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Add Obsidian repository key and repository
wget -qO - https://download.obsidian.md/obsidian-repo-0.14.11.gpg | sudo apt-key add -
echo "deb https://download.obsidian.md/0.14.11/ bionic main" | sudo tee /etc/apt/sources.list.d/obsidian.list

# Update apt package index and install required packages
sudo apt update
sudo apt install firefox flameshot thunderbird chromium-browser libreoffice vim terminator nitrogen remmina rofi obsidian code -y

# Install i3
sudo apt install i3 -y

# Install Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.22.0-amd64.deb
sudo apt install ./slack-desktop-*.deb -y
rm slack-desktop-*.deb

# Install Polybar
sudo apt install build-essential cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python3-sphinx libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev -y
git clone https://github.com/polybar/polybar.git
cd polybar && ./build.sh
cd .. && rm -rf polybar

# Install Arandr
sudo apt install arandr -y
