local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
  exclude_path_patterns = {
    "/node_modules/",
    ".local/share/nvim/lazy",
  },
  formatter_by_ft = {
    css = formatters.lsp,
    html = formatters.lsp,
    json = formatters.lsp,
    lua = formatters.lsp,
    typescript = formatters.prettierd,
    typescriptreact = formatters.prettierd,
    javascript = formatters.prettierd
  },
  run_with_sh = false,
})
