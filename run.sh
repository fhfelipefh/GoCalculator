#!/bin/bash
echo 'run docker container'
sudo docker run -p 8081:8081 fhfelipefh/calculator:latest -d &
echo 'docker run done'


