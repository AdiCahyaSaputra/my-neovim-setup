local ok, lsp_s = pcall(require, "lsp_signature")
if not ok then return end

local config = {
	close_timeout = 1000,
	hint_prefix = "👾 ",
	toggle_key = "<A-d>"
}

lsp_s.setup(config)
