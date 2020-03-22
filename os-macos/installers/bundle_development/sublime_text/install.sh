#!/bin/bash
#
# Sublime Text 3
# --------
# A sophisticated text editor for code, markup and prose.
# Not only does it have incredible built in features (multi-edit and vim mode),
# but it has support for plugins, snippets, and many other things.
# 
# https://www.sublimetext.com/3
# 
brew cask install sublime-text
printf "don't forget to run \e[32mcmd+shift+p \e[0m> Install Package Control \e[0m \n"
printf "don't forget to run \e[32msync: download settings \e[0m \n"

# add sublime to terminal command
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime

