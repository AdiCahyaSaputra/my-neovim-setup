local ok, builtin = pcall(require, 'telescope.builtin')
if not ok then return end

local bind = vim.keymap.set

bind('n', '<leader>ff', builtin.find_files)
bind('n', '<leader>fb', '<cmd>Telescope file_browser<cr>', { noremap = true })

local telescope = require'telescope'
local fb = telescope.extensions.file_browser.actions

telescope.setup {
  extensions = {
    ["ui-select"] = {
      require'telescope.themes'.get_dropdown()
    },
    file_browser = {
      hijack_netrw = true,
      mappings = {
        ["n"] = {
          a = fb.create
        }
      }
    }
  }
}

telescope.load_extension("ui-select")
telescope.load_extension("file_browser")
