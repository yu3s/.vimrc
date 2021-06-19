set nocompatible

filetype plugin indent on

set background=dark
syntax enable
set t_ut=
set termwinkey=<C-L>
set termguicolors
set termwinscroll=65536

set shortmess=atI
let mapleader=" "

set number
set laststatus=2
set autoread
set updatetime=2000

set hidden
set showmatch
set matchtime=2
set wildmenu
set wildmode=list:longest,full
set ttyfast
set lazyredraw
set showcmd
set splitright
set splitbelow

set ffs=unix,mac,dos
set backspace=indent,eol,start
set signcolumn=yes
set synmaxcol=200

set autoindent
set cindent
set nowrapscan

set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set hlsearch
set incsearch

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set cscopetag
set csprg=gtags-cscope
set completeopt-=preview

set path+=include
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
