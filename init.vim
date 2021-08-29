syntax enable
filetype plugin on

set path+=**
set wildmenu

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nu
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8

set termguicolors

" FileBrowsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

call plug#begin('~/.local/share/nvim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none


let mapleader = " "
nnoremap <leader>f :Ex<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>v :vsplit<CR>
