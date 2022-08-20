local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

ts.setup {
	ensure_installed = { "php", "lua", "javascript", "tsx", "typescript", "html", "java" },
	auto_install = true,
	ignore_install = { "javascript" },

	highlight = {
		enable = true,
		disable = { 'html' },
		additional_vim_regex_highlighting = false
	},

	autotag = {
		enable = true
	},

	rainbow = {
		enable = true,
		extended_mode = false,
		max_file_lines = nil
	}
}
