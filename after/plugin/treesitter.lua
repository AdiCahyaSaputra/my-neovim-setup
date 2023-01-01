local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

ts.setup {
  ensure_installed = { "php", "tsx", "lua", "html", "typescript", "javascript" },
  auto_install = true,
  highlight = {
    enable = true
  },
  autotag = {
    enable = true
  }
}
