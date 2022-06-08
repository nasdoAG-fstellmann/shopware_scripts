#!/bin/bash
sudo apt update
sudo apt upgrade -y

if git --version 2>&1 >/dev/null ; then
sudo git clone https://github.com/nasdoAG-fstellmann/shopware_scripts.git
else
sudo apt install git -y
sudo git clone https://github.com/nasdoAG-fstellmann/shopware_scripts.git
fi

sudo chmod +x install_shopware_1.sh
sudo chmod +x install_shopware_2.sh
sudo chmod +x install_shopware_3.sh
sudo chmod +x install_shopware_4.sh

source install_shopware_1.sh

#edit php.ini

source install_shopware_2.sh

#edit php.ini
#mysql config

source install_shopware_3.sh

sudo mv install_shopware_4.sh /var/www/html/shopware
sudo mv shopware.conf /etc/nginx/sites-available/shopware.conf

cd /var/www/html/shopware

source install_shopware_4.sh

sudo nano /etc/hosts
#webpage for install

sudo apt install certbot python3-certbot-nginx -y

#replace domain
certbot --nginx -d shopware.linuxbuz.com
