#!/bin/bash

# install pyenv and pyenv-virtualenv
echo "Installing pyenv"
curl https://pyenv.run | bash
echo "Pyenv installed successfully"

echo "Installing pyenv-virtualenv"
git clone https://github.com/pyenv/pyenv-virtualenv.git "$(pyenv root)"/plugins/pyenv-virtualenv
echo "Pyenv-virtualenv installed successfully"
