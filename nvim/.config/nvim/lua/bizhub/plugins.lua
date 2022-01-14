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
    use {
        'lewis6991/impatient.nvim',
        config = [[require('bizhub.plugins.impatient')]],
    }

    -- Packer
    use 'wbthomason/packer.nvim'

    -- Dependencies
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = [[require('bizhub.plugins.treesitter')]]
    }

    use 'nvim-treesitter/playground'

    -- Snippet engine
    use {
        'L3MON4D3/LuaSnip',
        config = [[require('bizhub.plugins.snippets')]]
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
        config = [[require('bizhub.plugins.completions')]]
    }

    -- Language server
    use 'neovim/nvim-lspconfig'
    use {
        'williamboman/nvim-lsp-installer',
        config = [[require('bizhub.lsp')]]
    }

    -- Null-ls
    use {
        'jose-elias-alvarez/null-ls.nvim',
        config = [[require('bizhub.lsp.null-ls')]]
    }

    -- General
    use 'mg979/vim-visual-multi'
    use 'tpope/vim-surround'
    use {
        'numToStr/Comment.nvim',
        config = [[require('bizhub.plugins.comment')]]
    }
    use 'jiangmiao/auto-pairs'
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = [[require('bizhub.plugins.indent-blankline')]]
    }

    -- Themes
    use {
        'navarasu/onedark.nvim',
        config = [[require('bizhub.plugins.colorscheme')]]
    }

    -- Dashboard
    use {
        'glepnir/dashboard-nvim',
        config = [[require('bizhub.plugins.dashboard')]]
    }

    -- Transparent background
    use {
        'xiyaowong/nvim-transparent',
        config = [[require('bizhub.plugins.transparent')]]
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        config = [[require('bizhub.plugins.lualine')]]
    }

    -- Buffer tabs
    use {
        'romgrk/barbar.nvim',
        config = [[require('bizhub.plugins.barbar')]]
    }

    -- Nerdtree
    use {
        'scrooloose/nerdtree',
        config = [[require('bizhub.plugins.nerdtree')]]
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        config = [[require('bizhub.plugins.telescope')]]
    }

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    use {
        'lewis6991/gitsigns.nvim',
        config = [[require('bizhub.plugins.gitsigns')]]
    }

    use {
        'pwntester/octo.nvim',
        config = [[require('bizhub.plugins.octo')]]
    }

    -- Github copilot
    use {
        'github/copilot.vim',
        config = [[require('bizhub.plugins.copilot')]]
    }

    -- Testing
    use {
        'vim-test/vim-test',
        config = [[require('bizhub.plugins.testing')]]
    }

    -- Highlight colors
    use {
        'norcalli/nvim-colorizer.lua',
        config = [[require('bizhub.plugins.colorizer')]]
    }

    -- Keybind helper
    use {
        'folke/which-key.nvim',
        config = [[require('bizhub.plugins.which-key')]]
    }

    -- Motion
    use {
        'easymotion/vim-easymotion',
        config = [[require('bizhub.plugins.easymotion')]]
    }

    -- Vuejs
    use 'leafOfTree/vim-vue-plugin'

    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
