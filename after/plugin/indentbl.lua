local ok, indentbl = pcall(require, 'indent_blankline')
if not ok then return end
--
indentbl.setup {
  show_current_context = true,
  show_current_context_start = false
}
