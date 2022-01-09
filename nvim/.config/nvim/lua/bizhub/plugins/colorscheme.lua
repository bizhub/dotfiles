-- https://github.com/navarasu/onedark.nvim

local status_ok, onedark = pcall(require, 'onedark')
if not status_ok then
    return
end

onedark.setup({
    transparent = true,
    ending_tildes = false,
    toggle_style_key = '<nop>',

    highlights = {
        TelescopeBorder = {fg = '$grey'},
        TelescopePromptBorder = {fg = '$grey'},
        TelescopeResultsBorder = {fg = '$grey'},
        TelescopePreviewBorder = {fg = '$grey'},
    }
})

onedark.load()
