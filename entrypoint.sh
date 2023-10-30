#!/bin/bash

set -x

cd /home/ubuntu
sudo rm -rf erpnextdocker
sudo git clone https://oauth2:{gitlan_token}@gitlab.com/icenna-app/erpnextdocker.git -b development
cd erpnextdocker
sudo chmod +x deploy.sh
. deploy.sh
export public_ip=$(curl http://checkip.amazonaws.com)
echo "please use the following link to access your site - http://$public_ip:80 "
