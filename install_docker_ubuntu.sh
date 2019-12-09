#!/bin/sh

#This script if specific for Ubuntu 18.04 LTS.
#Usage : curl httpdownloadurlpath | /bin/bash

echo "Installing the Docker in Ubuntu."
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
echo "Y" | sudo apt install docker-ce
echo "Installation is done"
echo "Checking the docker Status:"
sudo systemctl status docker
