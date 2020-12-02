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

" enable code foldings
"set foldmethod=indent
"set foldlevel=99



call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Zenburn'
Plug 'dylanaraps/fff.vim'
Plug 'raimondi/delimitmate'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'lilydjwg/colorizer'
Plug 'plasticboy/vim-markdown'
Plug 'ervandew/supertab'
Plug 'valloric/youcompleteme'
Plug 'jupyter-vim/jupyter-vim'
Plug 'artur-shaik/vim-javacomplete2'
call plug#end()




"file finder
set path+=**
set wildmenu

" hi Normal guibg=NONE ctermbg=NONE
" colorscheme zenburn
set background=dark


let mapleader = " "

nnoremap <silent> <Leader>f :F<CR>
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
let g:instant_markdown_browser="qutebrowser"
let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

nnoremap <silent> <Leader>x :JupyterSendCell<CR>

let g:jedi#completions_enabled = 0
autocmd FileType java setlocal omnifunc=javacomplete#Complete
