local ok, biscuits = pcall(require, "nvim-biscuits")
if not ok then
	return
end

biscuits.setup({
	on_events = { "InsertLeave" },
	cursor_line_only = false,
	default_config = {
		prefix_string = " » ",
	},
})
