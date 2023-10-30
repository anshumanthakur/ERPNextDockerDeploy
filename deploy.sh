#!/bin/bash

set -x

sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install docker -y
sudo apt-get install docker-compose -y
sudo docker login -u ialtayeb -p "{docker_password}"
sudo rm -rf frappe_docker
sudo git clone https://github.com/frappe/frappe_docker
sudo mv update_app.sh ./frappe_docker
sudo mv apps.json ./frappe_docker
cd frappe_docker
sudo chmod +x update_app.sh
. update_app.sh
sudo rm pwd.yml
sudo rm compose.yaml
cd ..
sudo mv pwd.yml ./frappe_docker
sudo mv compose.yaml ./frappe_docker
cd frappe_docker
sudo nohup docker-compose -f ./pwd.yml up &