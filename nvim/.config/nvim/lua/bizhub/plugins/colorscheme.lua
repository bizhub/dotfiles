local status_ok, onedark = pcall(require, 'onedark')
if not status_ok then
    return
end

vim.g.onedark_toggle_style_keymap = '<nop>'

onedark.setup()

local colors = require('onedark.colors')
vim.cmd("highlight TelescopeBorder guifg="..colors.grey)
vim.cmd("highlight TelescopePromptBorder guifg="..colors.grey)
vim.cmd("highlight TelescopeResultsBorder guifg="..colors.grey)
vim.cmd("highlight TelescopePreviewBorder guifg="..colors.grey)
