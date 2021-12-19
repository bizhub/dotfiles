local utils = require 'bizhub.utils'
local nmap = utils.nmap

require('bizhub.lsp.lsp-installer')

nmap('gd', ':lua vim.lsp.buf.definition()<CR>zz<CR>')
nmap('gD', ':lua vim.lsp.buf.declaration()<CR>')
nmap('gi', ':lua vim.lsp.buf.implementation()<CR>')
nmap('gw', ':lua vim.lsp.buf.document_symbol()<CR>')
nmap('gw', ':lua vim.lsp.buf.workspace_symbol()<CR>')
nmap('gr', ':lua vim.lsp.buf.references()<CR>')
nmap('gt', ':lua vim.lsp.buf.type_definition()<CR>')
nmap('K', ':lua vim.lsp.buf.hover()<CR>')
nmap('<C-k>', ':lua vim.lsp.buf.signature_help()<CR>')
nmap('<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
nmap('<leader>rn', ':lua vim.lsp.buf.rename()<CR>')
