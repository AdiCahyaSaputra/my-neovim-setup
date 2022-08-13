local ok, indentbl = pcall(require, 'indent_blankline')
if not ok then return end

indentbl.setup {}
