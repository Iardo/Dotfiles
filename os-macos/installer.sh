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
brew update
brew install coreutils
brew install cmake
brew install git
brew install openldap libiconv
brew install brew-cask-completion
brew tap homebrew/cask-cask
brew tap homebrew/cask-versions

# HOMEBREW
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# OH-MY-ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh

# XCODE
xcode-select --install


# CONFIGURATIONS
    # DIRS
mkdir ~/Configs
    # FILES
touch ~/.hushlogin
# TODO: copy .dot files
    # SYMLINKS
ln -s /private/etc/hosts ~/Configs/hosts
ln -s ~/.gitconfig ~/Configs/.gitconfig
ln -s ~/.gitignore_global ~/Configs/.gitignore_global
ln -s ~/.muttrc ~/Configs/.muttrc
ln -s ~/.myclirc ~/Configs/.myclirc
ln -s ~/.xdebug.ini ~/Configs/.xdebug.ini
ln -s ~/.bashrc ~/Configs/.bashrc
ln -s ~/.vimrc ~/Configs/.vimrc
ln -s ~/.zshrc ~/Configs/.zshrc
ln -s ~/.zshrc_aliases.zsh ~/Configs/.zshrc_aliases.zsh
ln -s ~/.zshrc_helpers.zsh ~/Configs/.zshrc_helpers.zsh
ln -s ~/.zshrc_paths.zsh ~/Configs/.zshrc_paths.zsh

