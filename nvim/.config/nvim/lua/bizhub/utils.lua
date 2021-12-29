local utils = {}
local map = vim.api.nvim_set_keymap

function utils.nmap(keybind, mapping, options)
    map('n', keybind, mapping, options or { noremap = true, silent = true })
end

function utils.imap(keybind, mapping, options)
    map('i', keybind, mapping, options or { noremap = true, silent = true })
end

function utils.vmap(keybind, mapping, options)
    map('v', keybind, mapping, options or { noremap = true, silent = true })
end

function utils.xmap(keybind, mapping, options)
    map('x', keybind, mapping, options or { noremap = true, silent = true })
end

return utils
