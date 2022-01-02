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

-- Windows
nmap('<C-h>', '<C-w>h')
nmap('<C-l>', '<C-w>l')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<leader>wo', ':only<CR>')         -- Close others
nmap('<leader>ww', ':wincmd w<CR>')     -- Switch
nmap('<leader>wq', ':wincmd q<CR>')     -- Close
nmap('<leader>ws', ':wincmd v<CR>')     -- Split

-- Buffers
nmap('<tab>', ':BufferNext<CR>zz')
nmap('<S-tab>', ':BufferPrevious<CR>zz')

nmap('<leader>bq', ':BufferClose<CR>')
nmap('<leader>1', ':BufferGoto 1<CR>zz')
nmap('<leader>2', ':BufferGoto 2<CR>zz')
nmap('<leader>3', ':BufferGoto 3<CR>zz')
nmap('<leader>4', ':BufferGoto 4<CR>zz')
nmap('<leader>5', ':BufferGoto 5<CR>zz')
nmap('<leader>6', ':BufferGoto 6<CR>zz')
nmap('<leader>7', ':BufferGoto 7<CR>zz')
nmap('<leader>8', ':BufferGoto 8<CR>zz')
nmap('<leader>9', ':BufferGoto 9<CR>zz')

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

-- Quick string substitute
nmap('<leader>ss', ':%s/\v')

-- Abbreviations
vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Wq wq
    cnoreabbrev W w
    cnoreabbrev Q q
]])
