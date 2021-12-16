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
          --workspace = {
            -- Make the server aware of Neovim runtime files
            --library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
          --}
        }
      }
    }
  end
  server:setup(opts)
end)

-- Mappings
-- vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>')
-- vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>')
-- vim.api.nvim_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>')
-- vim.api.nvim_set_keymap('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>')
-- vim.api.nvim_set_keymap('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
-- vim.api.nvim_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<cr>')
-- vim.api.nvim_set_keymap('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>')
-- vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>')
-- vim.api.nvim_set_keymap('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
-- vim.api.nvim_set_keymap('n', '<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
-- vim.api.nvim_set_keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
