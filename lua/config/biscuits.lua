local ok, biscuits = pcall(require, "nvim-biscuits")
if not ok then
	return
end

biscuits.setup({
	-- on_events = { "InsertLeave", "CursorHoldI" },
	cursor_line_only = true,
	default_config = {
		prefix_string = " » ",
	},
})
