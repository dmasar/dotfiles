set nocompatible
filetype indent plugin on
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:>-,trail:~
set autoindent
set title


execute pathogen#infect()

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Home> <nop>
noremap <End> <nop>
noremap <Insert> <nop>
noremap <Delete> <nop>
noremap <PageUp> <nop>
noremap <PageDown> <nop>

set laststatus=2

set foldcolumn=1
set foldmethod=manual
nnoremap <Tab> za
vnoremap <Tab> za
nnoremap <Space> vi{zf
