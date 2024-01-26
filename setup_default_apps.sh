#!/bin/bash

set -e
# Set Google Chrome as the default browser
echo -e "\e[32mSetting chrome as the default browser\e[0m"
sudo update-alternatives --set x-www-browser /usr/bin/google-chrome-stable
sudo update-alternatives --set gnome-www-browser /usr/bin/google-chrome-stable
echo -e "\e[32mChrome is now the default browser\e[0m"

# Set VLC as the default application for audio and video
echo -e "\e[32mSetting vlc as the default audio and video player\e[0m"
xdg-mime default vlc.desktop x-scheme-handler/audio
xdg-mime default vlc.desktop x-scheme-handler/video
echo -e "\e[32mVlc is now the default audio and video player\e[0m"

# Set qBittorrent as the default application for torrent files
echo -e "\e[32mSetting qbittorrent as the default torrent app\e[0m"
xdg-mime default org.qbittorrent.qBittorrent.desktop x-scheme-handler/magnet
xdg-mime default org.qbittorrent.qBittorrent.desktop application/x-bittorrent
echo -e "\e[32mQbittorrent is now the default torrent app\e[0m"

# set zsh as the default shell
echo -e "\e[32mSetting zsh as the default shell\e[0m"
chsh -s "$(which zsh)"
echo -e "\e[32mZsh is now the default shell\e[0m"
