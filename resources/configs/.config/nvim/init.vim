" You can use your existing ~/.vimrc, files, and plugins located within ~/.vim without having to symlink the files.
" This is now documented in NeoVim manual, see https://neovim.io/doc/user/nvim.html#nvim-from-vim.

" For Linux and macOS, just add the above lines to the top of your ~/.config/nvim/init.vim, or %LOCALAPPDATA%\nvim\init.vim for Windows.
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

