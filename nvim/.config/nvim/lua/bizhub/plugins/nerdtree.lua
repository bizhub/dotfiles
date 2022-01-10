-- https://github.com/preservim/nerdtree

local utils = require 'bizhub.utils'
local nmap = utils.nmap
local g = vim.g

g.NERDTreeIgnore = { '.git' }
g.NERDTreeShowHidden = 1

nmap('<c-b>', ':NERDTreeToggle<cr>')
