runtime bundle/vim-pathogen/autoload/pathogen.vim

set t_Co=256
set number
set wildmenu
set listchars=tab:▸\ ,eol:¬
set list

set tabstop=4
set shiftwidth=4
set expandtab

execute pathogen#infect()
syntax on
filetype plugin indent on
colors zenburn

