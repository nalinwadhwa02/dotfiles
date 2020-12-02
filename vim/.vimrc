syntax enable

set noerrorbells
set clipboard=unnamedplus
set spelllang=en
set spellfile=/home/nalinwadhwa/Dropbox/vim/spell/en.utf-8.add
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
"set splitbelow
"set splitright
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
Plug 'raimondi/delimitmate'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'rhysd/vim-grammarous'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'lilydjwg/colorizer'
Plug 'ervandew/supertab'
Plug 'fxn/vim-monochrome'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'raimondi/delimitmate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()



"file finder
set path+=**
set wildmenu

"colorscheme
set bg=dark
"let g:airline_theme='gruvbox'
"autocmd vimenter * ++nested colorscheme gruvbox

let mapleader = " "

nnoremap <silent> <Leader>v :vs<CR>
nnoremap <silent> <Leader>V :split<CR>
nnoremap <silent> <Leader>f :Ex<CR>
nnoremap <silent> <Leader>u :UndotreeShow<CR>
nnoremap <silent> <Leader>t :tabedit<CR>
nnoremap <silent> <Leader>l :tabn<CR>
nnoremap <silent> <Leader>h :tabp<CR>
nnoremap <silent> <Leader>j <C-W>w<CR>
nnoremap <silent> <Leader>k <C-W>W<CR>


"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3

