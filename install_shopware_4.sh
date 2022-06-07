#!/bin/bash
echo "Press any key to install shopware"
read -t 3 -n 1

wget https://www.shopware.com/de/Download/redirect/version/sw6/file/install_v6.4.11.1_4acac2b5012d6a03377ae5881590aec8cda0196b.zip
unzip install_v6.4.11.1_4acac2b5012d6a03377ae5881590aec8cda0196b.zip
composer install

sudo chown -R www-data:www-data /var/www/html/shopware
sudo chmod -R 755 /var/www/html/shopware

sudo wget https://pastebin.com/raw/X4a7Y3aq
sudo mv X4a7Y3aq /etc/nginx/sites-available/shopware.conf

sudo ln -s /etc/nginx/sites-available/shopware.conf /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl reload nginx