local utils = require 'bizhub.utils'
local nmap = utils.nmap

require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            ".git/"
        },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = {
            additional_args = function ()
                return {
                    '--hidden',
                }
            end
        },
    }
})

-- Mappings
nmap('<c-p>', ':Telescope find_files<cr>')
nmap('<leader>fg', ':Telescope live_grep<cr>')
nmap('<leader>gs', ':Telescope git_status<cr>')
