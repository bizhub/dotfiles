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
nmap('<c-h>', '<c-w>h')
nmap('<c-l>', '<c-w>l')
nmap('<c-j>', '<c-w>j')
nmap('<c-k>', '<c-w>k')
nmap('<leader>wo', ':only<cr>')         -- Close others
nmap('<leader>ww', ':wincmd w<cr>')     -- Switch
nmap('<leader>wq', ':wincmd q<cr>')     -- Close
nmap('<leader>ws', ':wincmd v<cr>')     -- Split

-- Buffers
nmap('<tab>', ':BufferNext<cr>zz')
nmap('<s-tab>', ':BufferPrevious<cr>zz')

nmap('<leader>bq', ':BufferClose<cr>')
nmap('<leader>1', ':BufferGoto 1<cr>zz')
nmap('<leader>2', ':BufferGoto 2<cr>zz')
nmap('<leader>3', ':BufferGoto 3<cr>zz')
nmap('<leader>4', ':BufferGoto 4<cr>zz')
nmap('<leader>5', ':BufferGoto 5<cr>zz')
nmap('<leader>6', ':BufferGoto 6<cr>zz')
nmap('<leader>7', ':BufferGoto 7<cr>zz')
nmap('<leader>8', ':BufferGoto 8<cr>zz')
nmap('<leader>9', ':BufferGoto 9<cr>zz')

-- Change inside
nmap('<leader>\'', 'ci\'')
nmap('<leader>"', 'ci"')
nmap('<leader>{', 'ci{')
nmap('<leader>[', 'ci[')
nmap('<leader>(', 'ci(')
nmap('<leader><', 'ci<')

-- Move lines
nmap('<a-j>', ':m +1<cr>')
nmap('<a-k>', ':m -2<cr>')
imap('<a-j>', '<esc>:m +1<cr>i')
imap('<a-k>', '<esc>:m -2<cr>i')
xmap('<a-j>', ':move \'>+1<cr>gv-gv')
xmap('<a-k>', ':move \'<-2<cr>gv-gv')

-- Clear highlights
nmap('<cr>', ':noh<cr><cr>zz')

-- Keep copied text
vmap('p', '"_dP')

-- Quick saving
nmap('<c-s>', ':w<cr>')
imap('<c-s>', '<esc>:w<cr>i')

-- Quick string substitute
nmap('<leader>ss', ':%s/', { noremap = true })

-- Abbreviations
vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Wq wq
    cnoreabbrev W w
    cnoreabbrev Q q
]])
