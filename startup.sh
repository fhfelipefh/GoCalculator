#!/bin/bash
sudo chmod +x run.sh
echo "copy run.sh to /etc/init.d"
sudo cp run.sh /etc/init.d/run.sh
sudo chmod +x /etc/init.d/run.sh
echo "add run.sh to rc.local"
sudo update-rc.d run.sh defaults
echo "run.sh is installed"
echo 'start service'
sudo service run.sh start
echo 'service status'
sudo service run.sh status
echo "Done"

