#!/bin/sh
#
# PHP
# --------
# PHP is a popular general-purpose scripting language that is especially 
# suited to web development.
# 
# 
sudo apt install php7.2 php-fpm
sudo apt install php7.3 php7.3-common php7.3-opcache php7.3-cli php7.3-gd php7.3-curl php7.3-mysql
pecl install xdebug

# https://github.com/rapidwebltd/php-switch-scripts
git clone https://github.com/rapidwebltd/php-switch-scripts.git
cd php-switch-scripts
./setup.sh

