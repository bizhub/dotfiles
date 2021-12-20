local g = vim.g
local opt = vim.opt

-- Leader
g.mapleader = ','

-- Clipboard
opt.clipboard = 'unnamedplus'

-- Tabs
opt.tabstop = 4
opt.softtabstop = 0
opt.shiftwidth = 4
opt.expandtab = true

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- Disable show mode
opt.showmode = false

-- Enable mouse
opt.mouse = 'a'

-- Window spliting
opt.splitbelow = true
opt.splitright = true

-- Set color scheme
opt.termguicolors = true
vim.cmd('colorscheme onedark')

vim.cmd [[filetype plugin indent on]]
