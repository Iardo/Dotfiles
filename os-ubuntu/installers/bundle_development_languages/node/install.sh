#!/bin/sh
#
# Node
# --------
# Node.js is an open-source cross-platform JavaScript run-time environment 
# that allows server-side execution of JavaScript code. This means that you 
# can run JavaScript code on your machine as a standalone application, 
# free of any web browser.
# 
# 
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install nodejs

# VERSION MANAGER
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
nvm install node

