#!/bin/bash
echo 'run docker container'
sudo docker run -p 8081:8081 fhfelipefh/calculator:latest -d &
echo 'docker run done'
sudo docker ps
echo 'Show services running in startup'
docker update –restart=always fhfelipefh/calculator:latest
