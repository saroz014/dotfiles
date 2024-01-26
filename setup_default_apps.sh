#!/bin/bash

set -e

# Set Google Chrome as the default browser
echo "Setting chrome as the default browser"
sudo update-alternatives --set x-www-browser /usr/bin/google-chrome-stable
sudo update-alternatives --set gnome-www-browser /usr/bin/google-chrome-stable
echo "Chrome is now the default browser"

# Set VLC as the default application for audio and video
echo "Setting vlc as the default audio and video player"
xdg-mime default vlc.desktop x-scheme-handler/audio
xdg-mime default vlc.desktop x-scheme-handler/video
echo "Vlc is now the default audio and video player"

# Set qBittorrent as the default application for torrent files
echo "Setting qbittorrent as the default torrent app"
xdg-mime default org.qbittorrent.qBittorrent.desktop x-scheme-handler/magnet
xdg-mime default org.qbittorrent.qBittorrent.desktop application/x-bittorrent
echo "Qbittorrent is now the default torrent app"
