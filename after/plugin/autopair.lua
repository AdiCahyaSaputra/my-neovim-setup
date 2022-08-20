local ok, autopair = pcall(require, 'nvim-autopairs')
if not ok then return end

autopair.setup {
	disable_filetype = { "TelescopePrompt", "vim" }
}
