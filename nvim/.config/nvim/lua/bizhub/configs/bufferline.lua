local utils = require 'bizhub.utils'
local nmap = utils.nmap

require('bufferline').setup({})

nmap('<C-[>', ':BufferLineCyclePrev<CR>')
nmap('<C-]>', ':BufferLineCycleNext<CR>')
