local ok, null_ls = pcall(require, 'null-ls')
if not ok then return end

null_ls.setup {
  sources = {
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.diagnostics.jsonlint,
    null_ls.builtins.diagnostics.luacheck,
    null_ls.builtins.formatting.blade_formatter
  }
}
