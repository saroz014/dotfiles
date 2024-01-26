#!/bin/bash

set -e

source ./dependencies/install.sh
source ./setup_default_apps.sh

# install dotfiles
cp .zshrc "${HOME}"
cp .gitconfig "${HOME}"

# some installations require the current shell process to be replaced with a new one. e.g. pyenv
exec "$SHELL"

echo -e "\e[32mProcess completed\e[0m"
echo -e "\e[32mRun source ~/.zshrc to refresh the contents of the zshrc file\e[0m"
