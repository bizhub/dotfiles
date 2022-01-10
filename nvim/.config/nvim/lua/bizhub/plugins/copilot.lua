-- https://github.com/github/copilot.vim

local utils = require 'bizhub.utils'
local nmap = utils.nmap
local imap = utils.imap

vim.g.copilot_enabled = 0
vim.g.copilot_no_tab_map = true

function _G.toggle_copilot()
    if vim.g.copilot_enabled == 0 then
        vim.g.copilot_enabled = 1
    else
        vim.g.copilot_enabled = 0
    end
end

nmap('<leader>c', ':lua toggle_copilot()<cr>')
imap('<c-j>', 'copilot#Accept("<cr>")', { silent = true, noremap = true, script = true, expr = true })
