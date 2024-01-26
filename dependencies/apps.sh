#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

apt_apps=(curl git zsh terminator xclip qbittorrent ca-certificates gnupg)
snap_apps=(pycharm-community code vlc)

install_apps() {
  local package_manager=$1

  for app in "${@:2}"; do
    if ! command -v "$app" &> /dev/null; then
      echo "Installing $app"
      sudo "${package_manager}" install "$app" -y
      echo "$app installed successfully"
    fi
  done
}

install_apps apt "${apt_apps[@]}"
install_apps snap "${snap_apps[@]}"
