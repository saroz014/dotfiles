#!/bin/bash

# Install docker
echo -e "\e[32mInstalling docker\e[0m"
# Add docker's official gpg key:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo -e "\e[32mDocker installed successfully\e[0m"

# Manage docker as a non-root user
echo -e "\e[32mManaging docker as a non-root user\e[0m"
sudo groupadd docker || true
sudo usermod -aG docker "$USER"
echo -e "\e[32mDocker can be used now without prefacing the docker command with sudo\e[0m"
