#!/bin/bash

# download and install ohmyzsh (ohmyzsh is a framework that adds a ton of useful functionalities to zsh)
echo -e "\e[32mInstalling zsh\e[0m"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# download zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# download zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
echo -e "\e[32mZsh installed successfully\e[0m"
