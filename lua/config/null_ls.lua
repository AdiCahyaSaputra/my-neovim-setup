local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.blade_formatter.with({
			filetypes = { "php" },
		}),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.eslint_d,
	},
})

require("mason-null-ls").setup({
	handlers = {},
})
