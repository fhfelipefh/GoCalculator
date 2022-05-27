#!/bin/bash
sudo chmod +x run.sh
sudo cp run.sh /etc/init.d/
sudo chmod +x /etc/init.d/run.sh
sudo update-rc.d run.sh defaults
sudo service run.sh start

