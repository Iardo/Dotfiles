#!/bin/sh
#
# Vim
# --------
# Is a powerful text editor with a big community that is constantly growing. 
# Even though the editor is about two decades old, people still extend and 
# want to improve it, mostly using Vimscript or one of the supported 
# scripting languages.
# 
# https://www.vim.org/
# 
alias python=python3
brew install vim

# init configuration and package manager
# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ⚠️ (Pathogen deprecated due to vim-plug having better compatibility with neovim)
# https://github.com/tpope/vim-pathogen
# mkdir -p ~/.vim/autoload ~/.vim/bundle && \
# curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

