-- https://github.com/github/copilot.vim

local utils = require 'bizhub.utils'
local nmap = utils.nmap

nmap('<leader>c', ':Copilot enable<CR>')
nmap('<leader>C', ':Copilot disable<CR>')
