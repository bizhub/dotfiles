local lsp_installer = require "nvim-lsp-installer"

-- Default servers
local servers = {
    'tailwindcss',
    'eslint',
    'tsserver',
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
    local opts = {}

    if server.name == "sumneko_lua" then
        opts = require('bizhub.lsp.servers.sumneko_lua')
    end

    server:setup(opts)
end)
