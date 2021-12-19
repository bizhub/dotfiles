local utils = require 'bizhub.utils'
local nmap = utils.nmap

-- Keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- Change inside
nmap('<leader>\'', 'ci\'')

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
