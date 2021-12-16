-- Telescope setup
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            ".git"
        }
    }
}

-- Mappings
vim.api.nvim_set_keymap('n', '<c-p>', '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', { noremap = true })
