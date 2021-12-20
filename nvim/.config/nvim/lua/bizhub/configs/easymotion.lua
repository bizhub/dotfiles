local utils = require 'bizhub.utils'
local nmap = utils.nmap

vim.cmd([[
autocmd User EasyMotionPromptBegin silent! LspStop
autocmd User EasyMotionPromptEnd silent! LspStart
]])
