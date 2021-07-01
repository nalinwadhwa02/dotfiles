set nocompatible
syntax enable
filetype plugin on
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set noexpandtab
set noerrorbells
set smartindent
set number 
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow 
set path+=**
set wildmenu
set mousefocus

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'
Plug 'owozsh/amora'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tribela/vim-transparent'
Plug 'powerline/powerline'
Plug 'OmniSharp/omnisharp-vim'
Plug 'jpalardy/vim-slime'
call plug#end()

colorscheme gruvbox
"colorscheme amora
set background=dark
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=25
let mapleader=" "

let g:slime_target = "vimterminal"


nmap <silent><leader>h :wincmd h<CR>
nmap <silent><leader>j :wincmd j<CR>
nmap <silent><leader>k :wincmd k<CR>
nmap <silent><leader>l :wincmd l<CR>
nmap <silent><leader>f :vsplit <bar>:Ex<bar>:vertical resize 30<CR>
nmap <silent><leader>v :vsplit<CR>
nmap <silent><leader>s :split<CR>
nmap <silent><leader>t :tabedit<CR>
nmap <silent><leader>r :wincmd H<CR>
