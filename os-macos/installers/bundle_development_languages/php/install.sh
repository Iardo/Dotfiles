#!/bin/sh
#
# PHP
# --------
# PHP is a popular general-purpose scripting language that is especially 
# suited to web development.
# 
#
# https://www.php.net/
# 
brew install php@5.6
brew install php@7.2
pecl xdebug

# https://github.com/rapidwebltd/php-switch-scripts
git clone https://github.com/rapidwebltd/php-switch-scripts.git
cd php-switch-scripts
./setup.sh


# SYMLINKS
ln -s /usr/local/etc/php/7.2/php.ini ~/Configs/php.ini

