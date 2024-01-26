#!/bin/bash

set -e

source ./dependencies/install.sh
source ./setup_default_apps.sh

# install dotfiles
cp .zshrc "${HOME}"
cp .gitconfig "${HOME}"

echo -e "\e[32mProcess completed\e[0m"
echo -e "\e[32mLogout and log back in\e[0m"
