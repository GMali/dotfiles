"	Color Scheme and Fonts
colorscheme desertEx

" Random
set nocompatible
filetype on
filetype plugin on
set nobackup
set nowritebackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" From Github.com/bnmrrs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"	TABS
set cindent
set smartindent
set autoindent
set modeline
set tabstop=2
set shiftwidth=2 "soft space = 2
set softtabstop=2
set smarttab
set expandtab " expand tabs

" Line wrapping on by default
set wrap
set linebreak

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"	More Goodies
set history=500 " keep track of last commands
set number ruler " show line numbers
set incsearch " incremental searching on
set hlsearch " highlight all matches
set showtabline=2 " show always for console version
set wildmenu " menu on statusbar for command autocomplete

" default to UTF-8 encoding
set encoding=utf8

set virtualedit=block
set clipboard+=unnamed  " Yanks go on clipboard instead.
set showmatch " Show matching braces.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Arrr! 'tis the maps me hearty!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"split vertically
map <C-n> <C-W>v
"split horzontally
map <C-h> <C-W>s
"save work
map <C-s> :w<CR>
"open NERDTree
map <C-o> :NERDTree<CR>
"switch between splits
map <tab> <C-W><C-W> 
"switch TABS forward
map <C-tab> gt
"switch TABS backward
map <C-S-tab> gT
"copy to clipboard outside vim
map <C-S-C> "+y
"cut to clipboard outside vim
map <C-S-x> "+x
"duplicate Line
map <C-d> yyp
"open new tab
map <C-T> :tabnew<CR>
"select all
map <C-A> ggVG
"paste from outside vim
map <C-S-V> "+gP
"close buffer/split/tab
map <C-q> :q<CR>
map <C-S-q> :q!<CR>
"Open .VIMRC
map <C-e> :tabnew ~/.vimrc<CR>
