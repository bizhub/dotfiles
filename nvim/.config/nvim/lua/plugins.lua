-- Plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- IDE
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- Themes
Plug 'joshdick/onedark.vim'

-- Visual
Plug 'ap/vim-css-color'
Plug 'mhinz/vim-startify'
Plug 'xiyaowong/nvim-transparent'

Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
-- Plug 'itchyny/lightline.vim'

-- Statusline
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

-- Buffer
-- Plug 'akinsho/bufferline.nvim'

-- Navigation
-- Plug 'bagrat/vim-buffet'
Plug 'scrooloose/nerdtree'
-- Plug 'junegunn/fzf'
-- Plug 'junegunn/fzf.vim'

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Plug('neoclide/coc.nvim', { branch = 'release' })
Plug 'terryma/vim-multiple-cursors'

-- Git
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

-- PHP
Plug 'stanangeloff/php.vim'

-- Javascript
Plug 'posva/vim-vue'

vim.call('plug#end')
