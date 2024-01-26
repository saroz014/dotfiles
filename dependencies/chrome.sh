#!/bin/bash

echo "Installing chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads/
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb
rm ~/Downloads/google-chrome-stable_current_amd64.deb
echo "Chrome installed successfully"
