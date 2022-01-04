-- https://github.com/github/copilot.vim

local utils = require 'bizhub.utils'
local nmap = utils.nmap
local imap = utils.imap

vim.g.copilot_enabled = 0
vim.g.copilot_no_tab_map = true

nmap('<leader>c', ':Copilot enable<cr>')
nmap('<leader>C', ':Copilot disable<cr>')
imap('<c-j>', 'copilot#Accept("<cr>")', { silent = true, noremap = true, script = true, expr = true })
