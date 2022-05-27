#!/bin/bash
echo 'run apt update'
sudo apt update -y
echo 'run apt install curl'
sudo apt install curl -y
echo 'add docker key'
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo 'add docker repository'
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo 'run apt update'
sudo apt update -y
echo 'run apt install docker-ce'
sudo apt install docker-ce -y
echo 'docker hello-world'
sudo docker run hello-world
echo 'run docker ps'
sudo docker ps
echo 'Download and install hashicorp packer'
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt-get update && sudo apt-get install packer -y
echo 'Verify'
packer version
echo 'Done'

 
