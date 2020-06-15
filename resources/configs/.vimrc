"--------------------------------------------------------------------------
" GENERAL
"-------------------------------------------------------------------- ------
"
syntax on
set mouse=
set list


set autoindent
set autoread                    " Automatically reread changed files without asking me anything
set autowrite                   " Automatically save before :next, :make etc.
set backspace=indent,eol,start  " Makes backspace key more powerful.
set display+=lastline
set encoding=utf-8              " Set default encoding to UTF-8
" set esckeys                   " Cursor keys in insert mode.
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set formatoptions+=o            " Continue comment marker in new lines.
set gdefault                    " Use 'g' flag by default with :s/foo/bar/.
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set incsearch                   " Shows the match while typing
set laststatus=2
set linespace=0                 " Set line-spacing to minimum.
set magic                       " Use 'magic' patterns (extended regular expressions).
set modeline                    " Enable modeline.
set nobackup                    " Don't create annoying backup files
set noerrorbells                " No beeps
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set nostartofline               " Do not jump to first character with page commands.
set noswapfile                  " Don't use swapfile
"set number                     " Show line numbers
set relativenumber              " Show relative line numbers
set ruler                       " Show the line and column numbers of the cursor.
set showcmd                     " Show me what I'm typing
set showmatch                   " Do not show matching brackets by flickering
set showmode                    " Show current mode.
set smartcase                   " ... but not when search pattern contains upper case characters
set splitbelow                  " Horizontal split below current.
set splitright                  " Vertical split to right of current.
set tabstop=4 shiftwidth=4 expandtab
set termguicolors               " Set 'true color' in the terminal
set t_Co=256                    " NOTE: Neovim ignores t_Co and other terminal codes.
set textwidth=0                 " Hard-wrap long lines as you type them.

" Show next 3 lines while scrolling.
if !&scrolloff
  set scrolloff=3          
endif
" Show next 5 columns while side-scrolling.
if !&sidescrolloff
  set sidescrolloff=5   
endif

" Leader key is like a command prefix. 
let mapleader='z'
let maplocalleader='\'

let g:python_host_prog="/usr/local/bin/python2.7"

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1


"--------------------------------------------------------------------------
" THEME
"--------------------------------------------------------------------------
"
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
let g:rehash256 = 1
highlight SignColumn guibg=#272822


"--------------------------------------------------------------------------
" MAPPINGS
"--------------------------------------------------------------------------
"
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Cursorcolumn
nmap <Space> <PageDown>
vmap <BS> x

" Buffer handling
nmap L :let &number=1-&number<CR>
nmap <leader>l :bnext<CR>
nmap <c-h> :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
nmap <leader>0 :set invnumber<CR>
" map :q to byffer delete
" http://stackoverflow.com/questions/7513380/vim-change-x-function-to-delete-buffer-instead-of-save-quit
cnoreabbrev <expr> q getcmdtype() == ":" && (getcmdline() == 'q' && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) > 1) ? 'bd' : 'q'

" Build-in spellchecking in Neovim
set spelllang=en,cjk
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>
" set spellfile=~/.config/nvim/spellfile.add
set nospell


"--------------------------------------------------------------------------
" PLUGINS
"-------------------------------------------------------------------- ------
" 
" Pathogen Deprecated due to vim-plug having better compatibility with neovim
" execute pathogen#infect() 
call plug#begin('~/.vim/plugged')
" To install coc-marketplace run '':CocInstall coc-marketplace'
" Then configured package.json to ~/.config/coc/extensions, then run 'npm install --no-optional --no-package-lock --no-audit'
" this installs a lot of unnecessary packages, delete everything that doesn't have a prefix coc-.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
" copy "colors" folder to ~/.vim/colors to avoid error: E185: Cannot find color scheme 'gruvbox' ⚠️ 
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe'
call plug#end()

" To install vim-plug pluggins run the following in Vim
" :source %
" :PlugInstall

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
if has("gui_running")
    inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
else
    inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
endif

" Conquer of Completion config
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" Command-line fuzzy finder config
nnoremap <C-p> :GFiles<CR>

fun! GoCOC()
    inoremap <buffer> <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
    
    inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <buffer> <silent><expr> <C-space> coc#refresh()

    " GoTo code navigation
    nmap <buffer> <leader>gd <Plug>(coc-definition)
    nmap <buffer> <leader>gy <Plug>(coc-typo-definition)
    nmap <buffer> <leader>gi <Plug>(coc-implementation)
    nmap <buffer> <leader>gr <Plug>(coc-references)
    nnoremap <buffer> <leader>cr :CocRestart
endfun

" UltiSnips config
inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  " set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  set listchars=tab:>\ ,extends:>,precedes:<,nbsp:+
endif

" Nerdtree config
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['_site']

" Airline settings
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_theme='molokai'

" Multicursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-e>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_quit_key='<Esc>'

" YouCompleteMe
" If you need to re-compile:
"   | cd ~/.vim/plugged/YouCompleteMe
"   | ./install.py --clang-completer
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_filetype_blacklist = {'*': 1}
let g:ycm_filetype_whitelist = { 
    \ 'ts': 1
\}

fun! GoYMC()
    " GoTo code navigation
    nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
    nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
    nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
endfun

" COC and YMC combo config
autocmd FileType cpp,cxx,h,hpp,c :call GoCOC()
autocmd FileType go :call GoCOC()
autocmd FileType typescript :call GoYMC()


