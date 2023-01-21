local ok, builtin = pcall(require, 'telescope.builtin')
if not ok then return end

vim.keymap.set('n', '<leader>ff', '<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({ previewer = false, hidden = true, file_ignore_patterns = {".git", "vendor", "node_modules"} }))<cr>')

local telescope = require'telescope'

telescope.setup {
  extensions = {
    ["ui-select"] = {
      require'telescope.themes'.get_dropdown()
    },
  }
}

telescope.load_extension("ui-select")
