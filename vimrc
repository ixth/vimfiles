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
syntax on
filetype plugin indent on
colors zenburn

au BufNewFile,BufRead *.yate set syntax=yate
au BufNewFile,BufRead *.jsx set syntax=javascript
au BufNewFile,BufRead *.json set syntax=javascript
