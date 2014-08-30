filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'


Plugin 'jnurmine/Zenburn'
Plugin 'vim-scripts/JavaScript-syntax'
Plugin 'tpope/vim-sensible'
Plugin 'msanders/snipmate.vim'
Plugin 'maksimr/vim-yate'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set t_Co=256
set number
set wildmenu
set listchars=tab:▸\ ,eol:¬
set list

set tabstop=4
set shiftwidth=4
set expandtab

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

vnoremap > ><CR>gv
vnoremap < <<CR>gv

syntax on
filetype plugin indent on
colors zenburn

au BufNewFile,BufRead *.yate set syntax=yate
au BufNewFile,BufRead *.jsx set syntax=javascript
au BufNewFile,BufRead *.json set syntax=javascript
