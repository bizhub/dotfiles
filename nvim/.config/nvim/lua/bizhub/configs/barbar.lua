-- https://github.com/romgrk/barbar.nvim

local utils = require 'bizhub.utils'
local nmap = utils.nmap

vim.g.bufferline = {
    auto_hide = true,
    closable = false
}

nmap('<C-[>', ':BufferPrevious<CR>')
nmap('<C-]>', ':BufferNext<CR>')