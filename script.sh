#!/bin/bash

sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker run --name docker-nginx -p 80:80 -d nginx