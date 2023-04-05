vim.g.mapleader = " "

local bind = vim.keymap.set

bind('n', '<leader>w', '<cmd>w<cr>')

bind('n', '<A-j>', '<C-d>zz')
bind('n', '<A-k>', '<C-u>zz')

bind('n', '<leader>ff',
'<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({ previewer = false, hidden = true, file_ignore_patterns = {".git", "vendor", "node_modules"} }))<cr>')
bind('n', '<leader>fb', '<cmd>Telescope git_branches<cr>')
bind('n', '<leader>fs', '<cmd>Telescope git_status<cr>')

bind('s', '<Tab>', "<cmd>lua require'luasnip'.jump(1)<cr>")
bind('s', '<S-Tab>', "<cmd>lua require'luasnip'.jump(-1)<cr>")

bind('n', '<A-l>', '<C-w>l')
bind('n', '<A-h>', '<C-w>h')

bind('n', '<A-Up>', '<cmd>vertical resize +3<cr>')
bind('n', '<A-Down>', '<cmd>vertical resize -3<cr>')

bind('n', 'H', '<cmd>bp<cr>')
bind('n', 'L', '<cmd>bn<cr>')
bind('n', 'C', '<cmd>bd<cr>')

bind('', 'f', '<cmd>HopChar1CurrentLine<cr>', { noremap = true, silent = true })
bind('', 'F', '<cmd>HopChar2CurrentLine<cr>', { noremap = true, silent = true })
bind('', '<leader>al', '<cmd>HopChar2<cr>', { noremap = true, silent = true })
bind('', '<leader>aw', '<cmd>HopWord<cr>', { noremap = true, silent = true })
bind('', '<leader>aa', '<cmd>HopChar1<cr>', { noremap = true, silent = true })

bind('i', 'jk', '<Esc>')

function _G.set_toggleterm_keybind()
  local opts = { buffer = 0 }
  bind('t', '<space>;', [[<C-\><C-n>]], opts)
  bind('t', '<A-t>', '<cmd>ToggleTerm<cr>', opts)
end

vim.cmd('autocmd! TermOpen term://*toggleterm* lua set_toggleterm_keybind()')

bind('n', '<A-t>', '<cmd>ToggleTerm direction=float<cr>', { noremap = true, silent = true })
