local ok, onedark = pcall(require, 'onedark')
if not ok then return end

onedark.setup {
	style = 'deep',
	code_style = {
		comments = 'none'
	}
}

onedark.load()
