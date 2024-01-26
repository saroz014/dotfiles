#!/bin/bash

echo -e "\e[32mInstalling chrome\e[0m"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads/
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb
rm ~/Downloads/google-chrome-stable_current_amd64.deb
echo -e "\e[32mChrome installed successfully\e[0m"
