#!/bin/sh
#
# Apache
# --------
# The Apache HTTP Server, colloquially called Apache, is a free and open-source 
# cross-platform web server software, released under the terms of Apache License 2.0.
# Apache is developed and maintained by an open community of developers 
# under the auspices of the Apache Software Foundation.
# 
# https://www.apache.org/
# 
sudo apachectl stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null

brew install httpd
sudo brew services start httpd


# Apache is controlled via the apachectl command
# -k will force a restart immediately
# sudo apachectl start
# sudo apachectl stop
# sudo apachectl -k restart


# SYMLINKS
mkdir ~/Configs/apache_logs
sudo ln -s /usr/local/etc/httpd/extra/httpd-vhosts.conf ~/Configs/httpd-vhosts.conf
sudo ln -s /usr/local/etc/httpd/httpd.conf ~/Configs/httpd.conf
sudo ln -s /usr/local/var/log/httpd/access_log ~/Configs/apache_logs/access_log
sudo ln -s /usr/local/var/log/httpd/error_log ~/Configs/apache_logs/error_log

