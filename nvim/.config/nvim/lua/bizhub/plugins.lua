local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Compile packer when plugins.lua is updated
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

-- Packer configuration
packer.init {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    },
}

return packer.startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Dependencies
    use 'nvim-lua/plenary.nvim'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = [[require('bizhub.configs.treesitter')]]
    }

    use 'nvim-treesitter/playground'

    -- Language server
    use {
        'williamboman/nvim-lsp-installer',
        requires = {
            'neovim/nvim-lspconfig'
        },
        config = [[require('bizhub.lsp')]]
    }

    -- Snippet engine
    use {
        'L3MON4D3/LuaSnip',
        config = [[require('bizhub.configs.snippets')]]
    }

    -- Completions
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lua',
            'saadparwaiz1/cmp_luasnip',
            'David-Kunz/cmp-npm',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline'
        },
        config = [[require('bizhub.configs.completions')]]
    }

    -- General
    use 'terryma/vim-multiple-cursors'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'jiangmiao/auto-pairs'
    -- use 'junegunn/fzf'
    -- use 'junegunn/fzf.vim'

    -- Themes
    use 'joshdick/onedark.vim'

    -- Dashboard
    use 'glepnir/dashboard-nvim'

    -- Transparent background
    use {
        'xiyaowong/nvim-transparent',
        config = [[require('bizhub.configs.transparent')]]
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require('bizhub.configs.lualine')]]
    }

    -- Buffer tabs
    use {
        'romgrk/barbar.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require('bizhub.configs.barbar')]]
    }

    -- Nerdtree
    use {
        'scrooloose/nerdtree',
        config = [[require('bizhub.configs.nerdtree')]]
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        config = [[require('bizhub.configs.telescope')]]
    }

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    use {
        'lewis6991/gitsigns.nvim',
        config = [[require('bizhub.configs.gitsigns')]]
    }

    use {
        'pwntester/octo.nvim',
        config = [[require('bizhub.configs.octo')]]
    }

    -- Github copilot
    use {
        'github/copilot.vim',
        config = [[require('bizhub.configs.copilot')]]
    }

    -- Testing
    use {
        'vim-test/vim-test',
        config = [[require('bizhub.configs.testing')]]
    }

    -- Highlight colors
    use {
        'norcalli/nvim-colorizer.lua',
        config = [[require('bizhub.configs.colorizer')]]
    }

    -- Keybind helper
    use {
        'folke/which-key.nvim',
        config = [[require('bizhub.configs.which-key')]]
    }

    -- Motion
    use {
        'easymotion/vim-easymotion',
        config = [[require('bizhub.configs.easymotion')]]
    }

    -- Vuejs
    use 'leafOfTree/vim-vue-plugin'

    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
