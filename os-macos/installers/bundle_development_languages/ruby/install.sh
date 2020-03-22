#!/bin/sh
#
# Ruby
# --------
# Is an interpreted, high-level, general-purpose programming language. 
# Is dynamically typed and uses garbage collection. It supports multiple
# programming paradigms, including procedural, object-oriented, 
# and functional programming. According to the creator, Ruby was influenced 
# by Perl, Smalltalk, Eiffel, Ada, Basic, and Lisp.
# 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ruby

gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --rails

