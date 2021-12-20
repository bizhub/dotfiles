local utils = require 'bizhub.utils'
local nmap = utils.nmap
local g = vim.g

g.NERDTreeIgnore = { '.git' }
g.NERDTreeShowHidden = 1

nmap('<C-b>', ':NERDTreeToggle<CR>')
