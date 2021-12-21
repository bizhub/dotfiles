local utils = require 'bizhub.utils'
local nmap = utils.nmap
local imap = utils.imap
local vmap = utils.vmap
local xmap = utils.xmap

-- Keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- Maintain selection when shifting in visual mode
vmap('<', '<gv')
vmap('>', '>gv')

-- Window movement
nmap('<C-h>', '<C-w>h')
nmap('<C-l>', '<C-w>l')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')

-- Buffers
nmap('<S-q>', ':BufferClose<CR>')
nmap('<tab>', ':BufferNext<CR>')
nmap('<S-tab>', ':BufferPrevious<CR>')

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
xmap('<A-j>', ':move \'>+1<CR>gv-gv')
xmap('<A-k>', ':move \'<-2<CR>gv-gv')

-- Clear highlights
nmap('<CR>', ':noh<CR>')

-- Keep copied text
vmap('p', '"_dP')

-- Quick saving
nmap('<C-s>', ':w<CR>')
imap('<C-s>', '<ESC>:w<CR>i')

-- Abbreviations
vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Wq wq
    cnoreabbrev W w
    cnoreabbrev Q q
]])
