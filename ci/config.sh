#!/bin/bash

sudo apt install apt-transport-https ca-certificates software-properties-common curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker ubuntu
sudo service docker start
sudo chkconfig docker on
sudo systemctl enable docker

sudo docker build -t node-app ../Dockerfile
sudo docker run --rm -p 8080:8080 --name node-app-run node-app