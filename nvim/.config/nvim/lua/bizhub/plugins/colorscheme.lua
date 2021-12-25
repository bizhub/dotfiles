local status_ok, onedark = pcall(require, 'onedark')
if not status_ok then
    return
end

vim.g.onedark_toggle_style_keymap = '<nop>'

onedark.setup()
