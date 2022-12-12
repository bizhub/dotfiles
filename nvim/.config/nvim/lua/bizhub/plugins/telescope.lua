-- https://github.com/nvim-telescope/telescope.nvim

local utils = require 'bizhub.utils'
local nmap = utils.nmap

vim.cmd([[
  highlight link TelescopePromptTitle PMenuSel
  highlight link TelescopePreviewTitle PMenuSel
  highlight link TelescopePromptNormal NormalFloat
  highlight link TelescopePromptBorder FloatBorder
  highlight link TelescopeNormal CursorLine
  highlight link TelescopeBorder CursorLineBg
]])

require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            ".git/"
        },
        layout_config = {
            prompt_position = 'top',
        },
        sorting_strategy = 'ascending',
    },
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = {
            additional_args = function ()
                return {
                    '--hidden',
                }
            end
        },
    }
})

-- Mappings
nmap('<c-p>', ':Telescope find_files<cr>')
nmap('<leader>fg', ':Telescope live_grep<cr>')
nmap('<leader>gs', ':Telescope git_status<cr>')
