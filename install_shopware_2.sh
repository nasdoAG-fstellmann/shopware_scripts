#!/bin/bash
echo "Press any key to install ioncube"
read -t 3 -n 1

sudo wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
sudo tar xfz ioncube_loaders_lin_x86-64.tar.gz

#get php extension dir
#PHP_PATH=(php -i | grep extension_dir)

#OUTPUT: extension_dir => /usr/lib/php/20190902 => /usr/lib/php/20190902

sudo cp ioncube/ioncube_loader_lin_7.4.so /usr/lib/php/20190902

sudo systemctl restart php7.4-fpm
