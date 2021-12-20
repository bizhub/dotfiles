local utils = require 'bizhub.utils'
local nmap = utils.nmap
local imap = utils.imap
local vmap = utils.vmap

-- Keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- Maintain selection when shift in visual mode
vmap('<', '<gv')
vmap('>', '>gv')

-- Window
nmap('<C-h>', '<C-w>h')
nmap('<C-l>', '<C-w>l')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')

-- Change inside
nmap('<leader>\'', 'ci\'')
nmap('<leader>"', 'ci"')
nmap('<leader>{', 'ci{')
nmap('<leader>[', 'ci[')
nmap('<leader>(', 'ci(')
nmap('<leader><', 'ci<')

-- Move lines
nmap('<A-j>', ':m +1<CR>')
nmap('<A-k>', ':m -2<CR>')
imap('<A-j>', '<ESC>:m +1<CR>i')
imap('<A-k>', '<ESC>:m -2<CR>i')

-- Quick saving
imap('<C-s>', '<ESC>:w<CR>i')

-- Treesitter playground
nmap('<f10>', ':TSHighlightCapturesUnderCursor<CR>')

-- Abbreviations
vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Wq wq
    cnoreabbrev W w
    cnoreabbrev Q q
]])
