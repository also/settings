call pathogen#infect()

" taken from
"   http://blog.interlinked.org/static/files/vimrc
"   https://github.com/RJ/dotvim/blob/master/vimrc

" show line numbers
set number

" spaces instead of tabs
set expandtab

" Tabs are 4 characters
set tabstop=4

" (Auto)indent uses 4 characters
set shiftwidth=4

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
