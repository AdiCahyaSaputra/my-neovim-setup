require("nvim-lsp-installer").setup {}
local lsp = require('lspconfig')
local on_attach = function(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Format", { clear = true }),
			buffer = bufnr,
			callback = function() vim.lsp.buf.formatting_sync() end
		})
	end
end


-- Html
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.html.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

-- tsserver
lsp.tsserver.setup {
	on_attach = on_attach,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
	capabilities = capabilities
}

-- css
lsp.cssls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

-- Java
lsp.jdtls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

-- Lua
lsp.sumneko_lua.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

-- PHP
lsp.phpactor.setup {
	on_attach = on_attach,
	capabilities = capabilities
}
lsp.intelephense.setup {}
