local utils = require 'bizhub.utils'
local nmap = utils.nmap

-- Keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- Tabs
nmap('<leader>1', '1gt')
nmap('<leader>2', '2gt')
nmap('<leader>3', '3gt')
nmap('<leader>4', '4gt')
nmap('<leader>5', '5gt')
nmap('<leader>6', '6gt')
nmap('<leader>7', '7gt')
nmap('<leader>8', '8gt')
nmap('<leader>9', '9gt')
nmap('<C-Left>', ':tabprevious<CR>')
nmap('<C-Right>', ':tabnext<CR>')
-- nmap('<leader>t', ':tabnew<CR>')

-- Change inside
nmap('<leader>\'', 'ci\'')

nmap('<f10>', ':TSHighlightCapturesUnderCursor<CR>')
