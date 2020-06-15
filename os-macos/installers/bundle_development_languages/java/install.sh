#!/bin/sh
#
# Erlang
# --------
# Java is a general-purpose programming language that is class-based, 
# object-oriented, and designed to have as few implementation dependencies as possible. 
# It is intended to let application developers write once, run anywhere (WORA).
# 
# https://www.java.com/es/
# 
brew cask info java8
brew cask info java

brew cask install homebrew/cask-versions/adoptopenjdk8
brew cask install homebrew/cask-versions/adoptopenjdk11


# VERSION MANAGER
brew install jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# jenv doesn’t install JDKs, so we have to tell jenv where to look for them. 
/usr/libexec/java_home -V
printf "run \e[32mjenv add \e[0mon every route above \n"
# jenv add /Library/Java/JavaVirtualMachines/jdk-13.0.2.jdk/Contents/Home
# jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
jenv versions


# LOCAL CONFIGURATION FILE: .java-version
# jenv local oracle64-1.6.0.39
# jenv shell oracle64-1.6.0.39
# jenv global oracle64-1.6.0.39

