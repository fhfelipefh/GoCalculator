echo 'run apt update'
apt update -y
echo 'run apt install curl'
apt install curl -y
echo 'add docker key'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo 'add docker repository'
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo 'run apt update'
apt update -y
echo 'run apt install docker-ce'
apt install docker-ce -y
echo 'docker hello-world'
docker run hello-world
echo 'run docker ps'
docker ps
echo 'Download and install hashicorp packer'
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install packer
echo 'Verify'
packer version
echo 'Done'

 