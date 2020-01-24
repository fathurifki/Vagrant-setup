#!/bin/bash

echo "check update"
sudo apt-get
echo "Install webserver"
sudo apt-get install -y apache2 php php-mysql
echo "Install Database Server"
sudo apt-get install -y mysql-server
echo "Install done"
git clone https://github.com/sdcilsy/sosial-media.git
sudo rm /var/www/html/*
sudo rm -R /var/www/html/*
sudo mv sosial-media/* /var/www/html
echo "Setup selesai"
