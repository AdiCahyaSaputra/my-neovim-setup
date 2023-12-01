local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre"
local async = event == "BufWritePost"

null_ls.setup({
	sources = {
		null_ls.builtins.diagnostics.eslint_d,
		-- null_ls.builtins.formatting.blade_formatter.with({
		-- 	filetypes = { "blade" },
		-- }),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettierd.with({
			extra_filetypes = { "blade", "php" },
		}),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			-- format on save
			vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
			vim.api.nvim_create_autocmd(event, {
				buffer = bufnr,
				group = group,
				callback = function()
					vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf(), timeout_ms = 2000 })
				end,
				desc = "[lsp] format on save",
			})
		end

		if client.supports_method("textDocument/rangeFormatting") then
			vim.keymap.set("x", "<Leader>f", function()
				vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
			end, { buffer = bufnr, desc = "[lsp] format" })
		end
	end,
})
