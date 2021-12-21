local utils = require 'bizhub.utils'
local nmap = utils.nmap

local configs = require'nvim-treesitter.configs'
configs.setup {
    ensure_installed = 'maintained', -- Only use parsers that are maintained
    highlight = { -- enable highlighting
        enable = true
    },
    indent = {
        enable = false -- default is disabled anyways
    }
}

-- Treesitter playground
nmap('<f10>', ':TSHighlightCapturesUnderCursor<CR>')
