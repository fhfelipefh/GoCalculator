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
if ! [ -x "$(command -v docker)" ]; then
  sudo apt install docker-ce -y
fi
echo 'docker hello-world'
sudo docker run hello-world
echo 'run docker ps'
sudo docker ps
echo 'Download and install hashicorp packer'
if [ ! -f /usr/local/bin/packer ]; 
then
     curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
     sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
     sudo apt-get update && sudo apt-get install packer -y
     echo 'Verify'
     packer version
fi
sudo apt-get install nginx -y
echo 'Done'

