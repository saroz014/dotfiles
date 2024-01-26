#!/bin/bash

# install pyenv and pyenv-virtualenv
curl https://pyenv.run | bash
git clone https://github.com/pyenv/pyenv-virtualenv.git "$(pyenv root)"/plugins/pyenv-virtualenv
