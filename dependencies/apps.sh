#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

apt_apps=(curl git zsh terminator xclip qbittorrent)
snap_apps=(pycharm-community code vlc)

install_apps() {
  local package_manager=$1

  for app in "${@:2}"; do
    if ! command -v "$app" &> /dev/null; then
      echo "$app not found in the system"
      echo "Installing $app using $package_manager"
      sudo "${1}" install "$app" -y
    fi
  done
}

install_apps apt "${apt_apps[@]}"
install_apps snap "${snap_apps[@]}"
