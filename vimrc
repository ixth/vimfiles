filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

Plugin 'mattn/emmet-vim'
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
set listchars=tab:▸\ ,eol:¬
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

vnoremap > ><CR>gv
vnoremap < <<CR>gv

map <c-k><c-b> :NERDTreeToggle<CR>
map <c-k><c-t> :tabe
map <c-k><c-]> :tabp
map <c-k><c-[> :tabn

syntax on
filetype plugin indent on
colors zenburn

au BufNewFile,BufRead *.json set syntax=javascript
