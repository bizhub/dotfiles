local utils = require 'bizhub.utils'
local nmap = utils.nmap
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {}
  if server.name == "sumneko_lua" then
    opts = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', 'use' }
          },
          workspace = {
             -- Make the server aware of Neovim runtime files
            library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
          }
        }
      }
    }
  end
  server:setup(opts)
end)

-- Mappings
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
