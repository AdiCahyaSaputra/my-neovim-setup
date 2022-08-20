local ok, fsnippet = pcall(require, 'luasnip.loaders.from_vscode')
if not ok then return end

fsnippet.lazy_load()
