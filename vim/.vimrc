set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'tpope/vim-fugitive'
    Plugin 'itchyny/lightline.vim'
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

" Lightline
set ttimeout ttimeoutlen=30     " Fix lag when pressing esc
set noshowmode                  " Hide default mode
set laststatus=2                " Enable colors

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

syntax on

set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

set hlsearch
set ignorecase
set incsearch
set smartcase

set mouse=a

set confirm
