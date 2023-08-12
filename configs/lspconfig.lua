-- Visit https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "cmake", "html", "cssls", "jsonls", "lua_ls", "tsserver" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
