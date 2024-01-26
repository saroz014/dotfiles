#!/bin/bash

set -e

sudo apt update -y && sudo apt upgrade -y

apt_apps=(curl git zsh terminator xclip qbittorrent)
snap_apps=(pycharm-community code vlc)

install_apps() {
    for app in "${2[@]}"; do
    if ! command -v "$app" &> /dev/null
    then
    	echo "$app not found in the system"
    echo "Installing $app"
    sudo ${1} install "$app" -y
    fi
done
}

install_apps apt "${apt_apps[@]}"
install_apps snap "${snap_apps[@]}"

# install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads/
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb

# download and install ohmyzsh (ohmyzsh is a framework that adds a ton of useful functionalities to zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# download zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# download zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# install docker (https://github.com/docker/docker-install)
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sh install.sh

# install pyenv and pyenv-virtualenv
curl https://pyenv.run | bash
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

