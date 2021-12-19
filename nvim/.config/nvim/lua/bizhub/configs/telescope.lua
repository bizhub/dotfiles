local utils = require 'bizhub.utils'
local nmap = utils.nmap

require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            ".git"
        }
    },
    pickers = {
        find_files = {
            hidden = true,
        }
    }
}

-- Mappings
nmap('<C-p>', ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>')
nmap('<leader>gs', ':Telescope git_status<CR>')
