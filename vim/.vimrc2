syntax enable

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set showcmd
set nocompatible
set relativenumber
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Zenburn'
Plug 'scrooloose/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'lilydjwg/colorizer'
Plug 'plasticboy/vim-markdown'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'ervandew/supertab'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
call plug#end()



"file finder
set path+=**
set wildmenu


colorscheme zenburn
set background=dark


let mapleader = " "

nnoremap <silent> <Leader>f :NERDTree<CR>
nnoremap <silent> <Leader>u :UndotreeShow<CR>
nnoremap <silent> <Leader>h :wincmd h<CR>
nnoremap <silent> <Leader>l :wincmd l<CR>
nnoremap <silent> <Leader>j :wincmd j<CR>
nnoremap <silent> <Leader>k :wincmd k<CR>
let g:airline_theme='zenburn'
"let g:airline_theme='monofur'
" markdown settings
filetype plugin on
"Uncomment to override defaults:
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
