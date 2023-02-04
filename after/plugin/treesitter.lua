local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

-- require("nvim-treesitter.install").prefer_git = false
-- require'nvim-treesitter.install'.compilers = { 'zig' }

ts.setup {
  ensure_installed = { "php", "lua", "javascript", "html" },
  auto_install = false,
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
  },

  autotag = {
    enable = true
  },

  markid = {
    enable = false,
    colors = require("markid").colors.bright
  },
  textobjects = {
    select = {
      enable = true
    },
    swap = {
      enable = true
    }
  }
}
