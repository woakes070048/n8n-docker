#!/bin/bash
echo "      ___         ___           ___           ___           ___           ___     "
echo "     /  /\       /__/\         /__/\         /  /\         /__/\         /  /\    "
echo "    /  /:/_      \  \:\        \  \:\       /  /:/_        \  \:\       /  /::\   "
echo "   /  /:/ /\      \__\:\        \__\:\     /  /:/ /\        \  \:\     /  /:/\:\  "
echo "  /  /:/ /::\ ___ /  /::\ ___   /  /::\   /  /:/_/::\   _____\__\:\   /  /:/~/::\ "
echo " /__/:/ /:/\:/__/\  /:/\:/__/\ /__/:/\:\ /__/:/__\/\:\ /__/::::::::\ /__/:/ /:/\:|"
echo " \  \:\/:/~/:/\:\ \/__\:\/:/\:\ \__\/  \:\ \  \:\ /:/\:\ \  \:\~~\~~\/ \  \:\/:/~/:/"
echo "  \  \::/ /:/__\/      \::/  \:\   /  /:/  \  \:\/:/__\/  \  \:\  ~~~   \  \::/ /:/ "
echo "   \  \:\/:/           /:/  /:/  /__/:/    \  \::/        \  \:\        \__\/ /:/  "
echo "    \  \::/           /:/  /:/   \__\/      \__\/          \  \:\         /__/:/   "
echo "     \__\/           /__/:/                                 \__\/         \__\/    "
echo "                    \__\/                                                            "
echo ""
echo "Installation script for n8n by Pegas Technology Solutions"
echo "This script will install Docker and all prerequisites for n8n installation"
echo "Have you set up your domain name automate.yourdomainname.com? If you cant ping the sever dont run the script until you can"

# Update package list and install prerequisites
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Add current user to the Docker group
sudo groupadd docker
sudo usermod -aG docker $USER

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Print Docker and Docker Compose versions
echo "Docker and Docker Compose have been installed successfully."
echo "Docker version: $(docker --version)"
echo "Docker Compose version: $(docker-compose --version)"
echo "Please make sure you have support for your server contact at support@pegas.io or fill out our contact from at https://pegas.io/contact/"
