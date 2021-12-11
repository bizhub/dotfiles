set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
    Plugin 'itchyny/lightline.vim'

    " Navigation
    Plugin 'scrooloose/nerdtree'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'

    " Javascript
    Plugin 'jelera/vim-javascript-syntax'

    " PHP
    Plugin 'phpactor/phpactor'
    Plugin 'stephpy/vim-php-cs-fixer'
    Plugin 'shawncplus/phpcomplete.vim'

    " Typescript
    Plugin 'leafgarland/typescript-vim'
    Plugin 'HerringtonDarkholme/yats.vim'

    " Vuejs
    Plugin 'posva/vim-vue'
    Plugin 'leafOfTree/vim-vue-plugin'

call vundle#end()
filetype plugin indent on

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

set numberwidth=3
set number
highlight LineNr ctermfg=grey

set hlsearch
set ignorecase
set incsearch
set smartcase

set mouse=a

set confirm

" Keybindings
nmap <C-p> :Files<CR>
nmap <C-b> :NERDTreeToggle<CR>

nnoremap ;w :w<cr>
inoremap <C-S> <Esc>:w<cr>i
