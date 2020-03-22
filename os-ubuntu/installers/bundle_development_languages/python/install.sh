#!/bin/sh
#
# Python
# --------
# Is an interpreted, high-level, general-purpose programming language. 
# Python's design philosophy emphasizes code readability with its notable 
# use of significant whitespace. Its language constructs and object-oriented 
# approach aim to help programmers write clear, logical code for small and 
# large-scale projects.
# 
sudo apt-get install python python-dev python-setuptools -y
sudo apt-get install python3-minimal python3-setuptools
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install --upgrade pip setuptools

