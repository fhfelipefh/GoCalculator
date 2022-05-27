#!/bin/bash
sudo docker run -p 8081:8081 fhfelipefh/calculator:latest -d &
# set to run this command in system startup
sudo chmod +x run.sh
sudo cp run.sh /etc/init.d/
sudo chmod +x /etc/init.d/run.sh
sudo update-rc.d run.sh defaults
sudo service run.sh start


