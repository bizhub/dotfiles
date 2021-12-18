-- Automatic packer bootstraping
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Compile packer when plugins.lua is updated
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require('bizhub.configs.treesitter')]]
    }

    -- Language server
    use {
        'williamboman/nvim-lsp-installer',
        requires = {
            'neovim/nvim-lspconfig'
        },
        config = [[require('bizhub.configs.lsp')]]
    }

    use 'terryma/vim-multiple-cursors'

    -- Completions
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline'
        },
        config = [[require('bizhub.configs.completions')]]
    }

    -- Github copilot
    use 'github/copilot.vim'

    -- Themes
    use 'joshdick/onedark.vim'

    -- Dashboard
    use 'glepnir/dashboard-nvim'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- Visual
    use 'ap/vim-css-color'
    use {
        'xiyaowong/nvim-transparent',
        config = [[require('bizhub.configs.transparent')]]
    }

    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require('bizhub.configs.lualine')]]
    }

    -- Buffer
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
        requires = 'nvim-lua/plenary.nvim',
        config = [[require('bizhub.configs.telescope')]]
    }

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    use {
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = [[require('bizhub.configs.gitsigns')]]
    }

    use {
        'pwntester/octo.nvim',
        config = [[require('bizhub.configs.octo')]]
    }

    -- Testing
    use {
        'vim-test/vim-test',
        config = [[require('bizhub.configs.testing')]]
    }

    -- PHP
    -- use 'stanangeloff/php.vim'

    -- Javascript
    -- use 'posva/vim-vue'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
