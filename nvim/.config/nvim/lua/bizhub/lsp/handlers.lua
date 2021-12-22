local M = {}

M.on_attach = function (client, bufnr)
    if client.name == 'tsserver' then
        client.resolved_capabilities.document_formatting = false
    end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not status_ok then
    return
end

M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return M
