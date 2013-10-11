filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on

" taken from
"   http://blog.interlinked.org/static/files/vimrc
"   https://github.com/RJ/dotvim/blob/master/vimrc

" show line numbers
set number

" spaces instead of tabs
set expandtab

" Tabs are 2 characters
set tabstop=2

" (Auto)indent uses 2 characters
set shiftwidth=2

" Leader
let mapleader = ","

" Use the same symbols as TextMate for tabstops and EOLs
set list
set listchars=tab:▸\ ,eol:¬

" Faster Esc (hit jj in insert mode)
"inoremap <Esc> <nop>
inoremap jj <ESC>

" highlight current line
set cursorline

set ruler

set showcmd

set mouse=a

" sane searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" semicolon instead of colon
nnoremap ; :

" nicer up/down
nnoremap j gj
nnoremap k gk

let g:airline_powerline_fonts=1
set laststatus=2

nnoremap <leader>w <C-w>v<C-w>l

" nice moving between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
