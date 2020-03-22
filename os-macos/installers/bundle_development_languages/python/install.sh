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
brew install python

curl -O http://python-distribute.org/distribute_setup.py
python distribute_setup.py
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py

