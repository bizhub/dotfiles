-- https://github.com/lewis6991/gitsigns.nvim

local utils = require 'bizhub.utils'
local nmap = utils.nmap

require('gitsigns').setup()

nmap('<leader>gb', ':Gitsigns toggle_current_line_blame<cr>')
nmap('<leader>ghh', ':Gitsigns preview_hunk<cr>')
nmap('<leader>ghp', ':Gitsigns previous_hunk<cr>')
nmap('<leader>ghn', ':Gitsigns next_hunk<cr>')
