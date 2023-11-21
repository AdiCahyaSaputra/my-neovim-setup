local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

require("nvim-treesitter.install").prefer_git = false
require("nvim-treesitter.install").compilers = { "zig" }

ts.setup({
  ensure_installed = { "php", "lua", "javascript", "html" },
  auto_install = false,
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
  },

  autotag = {
    enable = true,
  },

  context_commentstring = {
    enable = true,
  },
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}
