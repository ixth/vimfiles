runtime bundle/vim-pathogen/autoload/pathogen.vim

set t_Co=256
set number
set wildmenu
set listchars=tab:▸\ ,eol:¬
set list

set tabstop=4
set shiftwidth=4
set expandtab

vnoremap > ><CR>gv
vnoremap < <<CR>gv

execute pathogen#infect()
let g:pathogen_disabled = ['supertab']
syntax on
filetype plugin indent on
colors zenburn

