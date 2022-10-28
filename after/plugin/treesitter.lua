local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

ts.setup {
  ensure_installed = { "php", "lua", "javascript", "tsx", "typescript", "html", "java", "regex" },
  auto_install = true,
  -- ignore_install = { "javascript" },

  highlight = {
    enable = true,
    disable = { 'html' },
    additional_vim_regex_highlighting = false
  },

  autotag = {
    enable = true
  },
}
