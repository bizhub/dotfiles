-- https://github.com/nvim-lualine/lualine.nvim

local function copilot_status()
    local copilot_enabled = vim.g.copilot_enabled

    if copilot_enabled == 0 then
        return ' '
    else
        return ' '
    end
end

local filetype = {
    'filetype',
    icons_enabled = false,
    icon = nil,
}

require('lualine').setup({
    options = {
        theme = 'wombat'
    },
    sections = {
        lualine_x = { filetype },
        lualine_y = { copilot_status },
    }
})

