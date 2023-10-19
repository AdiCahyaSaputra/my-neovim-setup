local ok, lspsaga = pcall(require, "lspsaga")
if not ok then
	return
end

lspsaga.setup({
	ui = {
		border = "single",
		title = false,
		colors = {
			normal_bg = "",
			title_bg = "",
		},
		-- kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind()
	},
	diagnostic = {
		show_code_action = false,
		show_source = true,
	},
	lightbulb = {
		enable = false,
	},
	symbol_in_winbar = {
		show_file = false,
	},
})
