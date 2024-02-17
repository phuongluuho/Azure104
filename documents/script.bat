#!/bin/bash
sleep 20s
sudo apt-get update
sudo apt-get install stress -y
sudo apt-get install apache2 -y
sudo ufw allow 'Apache Full'
sudo ufw allow 'OpenSSH'
sudo ufw enable 
sudo -i
cd /var/www/html
echo "<hmtl><body><h1>Web Server Azure Application Gateway LB </h1></body></html>" > index.html
