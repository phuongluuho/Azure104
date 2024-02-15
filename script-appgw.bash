#!/bin/bash
sleep 20s
apt-get update
apt-get install stress -y
apt-get install apache2 -y
ufw allow 'Apache Full'
ufw allow 'OpenSSH'
ufw enable 
sudo systemctl start apache2
sudo systemctl enable apache2
cd /var/www/html
echo "<hmtl><body><h1>Web Server Azure Application Gateway LB </h1></body></html>" > index.html