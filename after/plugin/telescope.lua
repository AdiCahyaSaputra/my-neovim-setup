local ok, builtin = pcall(require, 'telescope.builtin')
if not ok then return end

vim.keymap.set('n', '<leader>ff', builtin.find_files)

local telescope = require'telescope'

telescope.setup {
  extensions = {
    ["ui-select"] = {
      require'telescope.themes'.get_dropdown()
    },
  }
}

telescope.load_extension("ui-select")
