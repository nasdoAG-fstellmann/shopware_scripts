#!/bin/bash
echo "Press any key to install nginx, mariadb and php 7.4"
read -t 3 -n 1

sudo apt-get install nginx mariadb-server -y

sudo systemctl start nginx
sudo systemctl start mariadb
sudo systemctl enable nginx
sudo systemctl enable mariadb

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php

sudo apt-get install php7.4 php7.4-cli php7.4-fpm php7.4-common php7.4-mysql php7.4-curl php7.4-json php7.4-zip php7.4-gd php7.4-xml php7.4-mbstring php7.4-intl php7.4-opcache git unzip socat curl bash-completion -y