#!/bin/bash
echo "Press any key to prepare composer"
read -t 3 -n 1

sudo chmod 777 /usr/bin/
sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

sudo mkdir /var/www/html/shopware
