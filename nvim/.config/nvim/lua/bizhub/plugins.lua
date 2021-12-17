-- Get config helper
local function get_config(name)
    return string.format("require(\"bizhub.configs.%s\")", name)
end

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

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer
    use 'wbtomason/packer.nvim'

    -- IDE
    use {
        'nvim-treesitter/nvim-treesitter',
        config = get_config('treesitter')
    }

    use 'neovim/nvim-lspconfig'
    use {
        'williamboman/nvim-lsp-installer',
        config = get_config('lsp')
    }

    use 'terryma/vim-multiple-cursors'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use {
        'hrsh7th/nvim-cmp',
        config = get_config('completions')
    }

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
        config = get_config('transparent')
    }

    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-commentary'

    -- Statusline
    use 'kyazdani41/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        config = get_config('lualine')
    }

    -- Buffer
    -- use 'akinsho/bufferline.nvim'

    -- Navigation
    use {
        'scrooloose/nerdtree',
        config = get_config('nerdtree')
    }

    -- Telescope
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        config = get_config('telescope')
    }

    -- Git
    use 'nvim-lua/plenary.nvim'
    use {
        'lewis6991/gitsigns.nvim',
        config = get_config('gitsigns')
    }

    -- PHP
    -- use 'stanangeloff/php.vim'

    -- Javascript
    use 'posva/vim-vue'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
