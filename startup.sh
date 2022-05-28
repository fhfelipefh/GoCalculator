#!/bin/bash
sudo chmod +x run.sh
sudo cp run.sh /etc/init.d/
sudo chmod +x /etc/init.d/run.sh
sudo update-rc.d run.sh defaults
echo 'start service'
sudo service run.sh start
echo 'service status'
sudo service run.sh status
echo "Done"

