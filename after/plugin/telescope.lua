local ok, builtin = pcall(require, 'telescope.builtin')
if not ok then return end

local telescope = require'telescope'

telescope.setup {
  extensions = {
    ["ui-select"] = {
      require'telescope.themes'.get_dropdown()
    },
  }
}

telescope.load_extension("ui-select")
