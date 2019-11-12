filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'

Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'yuku-t/unite-git'

Plugin 'craigemery/vim-autotag'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tsukkee/unite-tag'

Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'msanders/snipmate.vim'

Plugin 'vim-scripts/JavaScript-syntax'

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

set enc=utf-8
set t_Co=256
set number
set wildmenu
set listchars=tab:⇥\ ,eol:¬
set list

set tabstop=4
set shiftwidth=4
set expandtab

if version >= 730
    set undofile
    set undodir=$HOME/.vim/undo
    set undolevels=1000
    set undoreload=10000
endif

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_rec', 'ignore_pattern', 'node_modules\/')
call unite#custom#source('file_rec\/async', 'ignore_pattern', 'node_modules\/')

map <c-k><c-u> :Unite<CR>
"map <c-p> :Unite file_rec/async<CR>
nnoremap <c-p> :Unite -start-insert file_rec<CR>
"map <c-k><c-t> :Unite tag:<c-r>=expand("<cword>")<CR><CR>


vnoremap > ><CR>gv
vnoremap < <<CR>gv

map <c-k><c-n> :NERDTreeToggle<CR>
map <c-k><c-f> :NERDTreeFind<CR>

map <c-k><c-t> :Tlist<CR>

syntax on
filetype plugin indent on
colors zenburn

au BufNewFile,BufRead *.json set syntax=javascript
