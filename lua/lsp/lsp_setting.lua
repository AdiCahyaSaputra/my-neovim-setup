require("nvim-lsp-installer").setup {}
local lsp = require('lspconfig')

-- tsserver
lsp.tsserver.setup {}

-- Html
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.html.setup {
	capabilities = capabilities,
}

-- Java
lsp.jdtls.setup {}

-- Lua
lsp.sumneko_lua.setup {}

