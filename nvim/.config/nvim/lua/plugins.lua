-- Plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- IDE
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'terryma/vim-multiple-cursors'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- Themes
Plug 'joshdick/onedark.vim'

-- Dashboard
Plug 'glepnir/dashboard-nvim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

-- Visual
Plug 'ap/vim-css-color'
Plug 'xiyaowong/nvim-transparent'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'

-- Statusline
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

-- Buffer
-- Plug 'akinsho/bufferline.nvim'

-- Navigation
Plug 'scrooloose/nerdtree'

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Git
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

-- PHP
-- Plug 'stanangeloff/php.vim'

-- Javascript
Plug 'posva/vim-vue'

vim.call('plug#end')
