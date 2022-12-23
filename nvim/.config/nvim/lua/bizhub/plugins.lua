-- Install packer
local ensure_packer = function ()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Initialize packer
require('packer').init({
  compile_path = vim.fn.stdpath('data')..'/site/plugin/packer_compiled.lua',
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'solid' })
    end,
  },
})

-- Install plugins
local use = require('packer').use

-- Packer
use 'wbthomason/packer.nvim'

-- Dependencies
use 'nvim-lua/plenary.nvim'
use 'kyazdani42/nvim-web-devicons'

-- Treesitter
use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
        'nvim-treesitter/playground',
        'nvim-treesitter/nvim-treesitter-textobjects',
        'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = function()
        require('bizhub.plugins.treesitter')
    end,
})

-- Snippet engine
use {
    'L3MON4D3/LuaSnip',
    config = [[require('bizhub.plugins.snippets')]]
}

-- Completions
use({
    'hrsh7th/nvim-cmp',
    requires = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'hrsh7th/cmp-nvim-lua',
        'jessarcher/cmp-path',
        'onsails/lspkind-nvim',
        'saadparwaiz1/cmp_luasnip',
    },
    config = function()
        require('bizhub.plugins.cmp')
    end,
})

-- Language server
use({
    'neovim/nvim-lspconfig',
    requires = {
        'b0o/schemastore.nvim',
        'folke/lsp-colors.nvim',
    },
    config = function()
        require('bizhub.plugins.lspconfig')
    end,
})
use({
    'williamboman/mason.nvim',
    requires = {
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        require('bizhub.plugins.mason')
    end,
})

-- Null-ls
-- use {
--     'jose-elias-alvarez/null-ls.nvim',
--     config = [[require('bizhub.lsp.null-ls')]]
-- }

-- General
use 'mg979/vim-visual-multi'
use 'tpope/vim-surround'
use {
    'numToStr/Comment.nvim',
    config = function()
        require('bizhub.plugins.comment')
    end,
}
use 'jiangmiao/auto-pairs'

-- Themes
use {
    'navarasu/onedark.nvim',
    config = function()
        require('bizhub.plugins.colorscheme')
    end,
}

-- Dashboard
use {
    'glepnir/dashboard-nvim',
    config = function()
        require('bizhub.plugins.dashboard')
    end,
}

-- Lualine
use {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('bizhub.plugins.lualine')
    end,
}

-- Buffer tabs
use {
    'romgrk/barbar.nvim',
    config = function()
        require('bizhub.plugins.barbar')
    end,
}

-- Nerdtree
use {
    'scrooloose/nerdtree',
    config = function()
        require('bizhub.plugins.nerdtree')
    end,
}

-- Telescope
use {
    'nvim-telescope/telescope.nvim',
    config = function()
        require('bizhub.plugins.telescope')
    end,
}

-- Git
use 'tpope/vim-fugitive'
use 'tpope/vim-rhubarb'

use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('bizhub.plugins.gitsigns')
    end,
}

use {
    'pwntester/octo.nvim',
    config = [[require('bizhub.plugins.octo')]]
}

-- Testing
use {
    'vim-test/vim-test',
    config = function()
        require('bizhub.plugins.testing')
    end,
}

-- Highlight colors
use {
    'norcalli/nvim-colorizer.lua',
    config = [[require('bizhub.plugins.colorizer')]]
}

-- Keybind helper
use {
    'folke/which-key.nvim',
    config = function()
        require('bizhub.plugins.which-key')
    end,
}

-- Motion
use {
    'easymotion/vim-easymotion',
    config = function()
        require('bizhub.plugins.easymotion')
    end,
}

-- Automatically install plugins on first run
if packer_bootstrap then
    require('packer').sync()
end

-- Automatically regenerate compiled loader file on save
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile>
    augroup end
]])
