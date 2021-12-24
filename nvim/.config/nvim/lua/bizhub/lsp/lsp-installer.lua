local status_ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if not status_ok then
    return
end

-- Default servers
local servers = {
    'tailwindcss',
    'bashls',
    'tsserver',
    'eslint',
    'html',
    'sumneko_lua',
    'intelephense',
    'volar',
    'pyright',
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require('bizhub.lsp.handlers').on_attach,
        capabilities = require('bizhub.lsp.handlers').capabilities,
    }

    if server.name == 'sumneko_lua' then
        local sumneko_opts = require('bizhub.lsp.servers.sumneko_lua')
        opts = vim.tbl_deep_extend('force', sumneko_opts, opts)
    end

    if server.name == 'eslint' then
        local eslint_opts = require('bizhub.lsp.servers.eslint')
        opts = vim.tbl_deep_extend('force', eslint_opts, opts)
    end

    server:setup(opts)
end)
