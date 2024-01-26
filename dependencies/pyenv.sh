#!/bin/bash

# install pyenv and pyenv-virtualenv
echo -e "\e[32mInstalling pyenv\e[0m"
curl https://pyenv.run | bash
echo -e "\e[32mPyenv installed successfully\e[0m"

echo -e "\e[32mInstalling pyenv-virtualenv\e[0m"
git clone https://github.com/pyenv/pyenv-virtualenv.git "$(pyenv root)"/plugins/pyenv-virtualenv
echo -e "\e[32mPyenv-virtualenv installed successfully\e[0m"
