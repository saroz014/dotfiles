#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

apt_apps=(curl git zsh terminator xclip qbittorrent ca-certificates gnupg)
snap_apps=(pycharm-community code vlc)

install_apps() {
  local package_manager=$1

  for app in "${@:2}"; do
    if ! command -v "$app" &> /dev/null; then
      echo -e "\e[32mInstalling $app\e[0m"
      sudo "${package_manager}" install "$app" -y
      echo -e "\e[32m$app installed successfully\e[0m"
    fi
  done
}

install_apps apt "${apt_apps[@]}"
install_apps snap "${snap_apps[@]}"
