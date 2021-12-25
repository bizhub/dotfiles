-- https://github.com/vim-test/vim-test

local utils = require 'bizhub.utils'
local nmap = utils.nmap

nmap('<leader>t', ':TestNearest<CR>')
nmap('<leader>T', ':TestFile<CR>')
nmap('<leader>a', ':TestSuite<CR>')
nmap('<leader>l', ':TestLast<CR>')
nmap('<leader>g', ':TestVisit<CR>')
