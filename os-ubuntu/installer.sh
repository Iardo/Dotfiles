#!/bin/sh
#
#--------------------------------------------------------------------------
# PROVISION SCRIPT
#--------------------------------------------------------------------------
#
# This script run all scripts inside ./installers subfolders sequentially.
# 
#
#--------------------------------------------------------------------------
#
# Essentials
# sudo apt-get update  -y
# sudo apt-get upgrade -y
# sudo apt-get install build-essential -y
# sudo apt-get install libffi-dev libssl-dev -y
# sudo apt-get install openssl -y
# sudo apt-get install curl -y
# sudo apt-get install git git-core -y

ROOT="./installers/*"
for bundle in ${ROOT}
do
    # remove the trailing "/"
    app=${bundle%*/}
    sh ${app}/install.sh
done

