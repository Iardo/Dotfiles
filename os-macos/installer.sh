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
# ESSENTIALS
brew install coreutils
brew install git
brew tap caskroom/cask

# HOMEBREW
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# OH-MY-ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh

touch ~/.hushlogin
