local ok, lsp_s = pcall(require, "lsp_signature")
if not ok then return end

local config = {
  floating_window = false,
	close_timeout = 1000,
	hint_prefix = "👾 ",
	toggle_key = "<A-d>",
  max_height = 2,
}

lsp_s.setup(config)
