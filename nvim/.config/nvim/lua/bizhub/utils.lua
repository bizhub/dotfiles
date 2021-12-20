local utils = {}
local map = vim.api.nvim_set_keymap

function utils.nmap(keybind, mapping)
    map('n', keybind, mapping, { noremap = true, silent = true })
end

function utils.imap(keybind, mapping)
    map('i', keybind, mapping, { noremap = true, silent = true })
end

function utils.vmap(keybind, mapping)
    map('v', keybind, mapping, { noremap = true, silent = true })
end

function utils.xmap(keybind, mapping)
    map('x', keybind, mapping, { noremap = true, silent = true })
end

return utils
