#!/bin/bash

set -e

source ./dependencies/install.sh

# Set Google Chrome as the default browser
sudo update-alternatives --set x-www-browser /usr/bin/google-chrome-stable
sudo update-alternatives --set gnome-www-browser /usr/bin/google-chrome-stable

# Set VLC as the default application for audio and video
xdg-mime default vlc.desktop x-scheme-handler/audio
xdg-mime default vlc.desktop x-scheme-handler/video

# Set qBittorrent as the default application for torrent files
xdg-mime default org.qbittorrent.qBittorrent.desktop x-scheme-handler/magnet
xdg-mime default org.qbittorrent.qBittorrent.desktop application/x-bittorrent

# run post-installation steps for Docker Engine
sudo groupadd docker
sudo usermod -aG docker "$USER"
newgrp docker

# install dotfiles
cp .zshrc "${HOME}"
cp .gitconfig "${HOME}"

# set zsh as default shell
chsh -s "$(which zsh)"
source "$HOME"/.zshrc
exec "$SHELL"
