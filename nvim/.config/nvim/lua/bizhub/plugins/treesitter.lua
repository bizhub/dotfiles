local utils = require 'bizhub.utils'
local nmap = utils.nmap

local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
    return
end

configs.setup {
    ensure_installed = 'maintained',
    highlight = {
        enable = true,
        disable = { '' },
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = {
            'yaml',
        }
    }
}

-- Treesitter playground
nmap('<f10>', ':TSHighlightCapturesUnderCursor<CR>')
nmap('<f11>', ':TSPlaygroundToggle<CR>')
