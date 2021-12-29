-- https://github.com/github/copilot.vim

local utils = require 'bizhub.utils'
local nmap = utils.nmap
local imap = utils.imap

vim.g.copilot_enabled = 0
vim.g.copilot_no_tab_map = true

nmap('<leader>c', ':Copilot enable<CR>')
nmap('<leader>C', ':Copilot disable<CR>')
imap('<C-j>', 'copilot#Accept("<CR>")', { silent = true, noremap = true, script = true, expr = true })
