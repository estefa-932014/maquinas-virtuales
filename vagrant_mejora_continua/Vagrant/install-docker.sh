#!/bin/bash
# instalación de Docker
sudo apt-get update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update -y
sudo apt-cache policy docker-ce -y
sudo apt install docker-ce -y  
sudo systemctl start docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo usermod -aG docker vagrant
sudo su - ${USER}
id -nG
# instalación de docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

