-- https://github.com/vim-test/vim-test

local utils = require 'bizhub.utils'
local nmap = utils.nmap

nmap('<leader>t', ':TestNearest<cr>')
nmap('<leader>T', ':TestFile<cr>')
nmap('<leader>a', ':TestSuite<cr>')
nmap('<leader>l', ':TestLast<cr>')
-- nmap('<leader>g', ':TestVisit<cr>')
