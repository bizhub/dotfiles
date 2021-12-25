-- https://github.com/github/copilot.vim

local utils = require 'bizhub.utils'
local nmap = utils.nmap

vim.g.copilot_enabled = 0

nmap('<leader>c', ':Copilot enable<CR>')
nmap('<leader>C', ':Copilot disable<CR>')
