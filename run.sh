#!/bin/bash
echo 'run docker container'
sudo systemctl start docker
sudo docker run -p 8081:8081 fhfelipefh/calculator:latest -d &
echo 'docker run done'


