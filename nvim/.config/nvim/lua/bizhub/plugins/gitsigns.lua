-- https://github.com/lewis6991/gitsigns.nvim

local utils = require 'bizhub.utils'
local nmap = utils.nmap

require('gitsigns').setup()

nmap('<leader>gb', ':Gitsigns toggle_current_line_blame<CR>')
