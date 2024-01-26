#!/bin/bash

set -e

# Set Google Chrome as the default browser
sudo update-alternatives --set x-www-browser /usr/bin/google-chrome-stable
sudo update-alternatives --set gnome-www-browser /usr/bin/google-chrome-stable

# Set VLC as the default application for audio and video
xdg-mime default vlc.desktop x-scheme-handler/audio
xdg-mime default vlc.desktop x-scheme-handler/video

# Set qBittorrent as the default application for torrent files
xdg-mime default org.qbittorrent.qBittorrent.desktop x-scheme-handler/magnet
xdg-mime default org.qbittorrent.qBittorrent.desktop application/x-bittorrent
