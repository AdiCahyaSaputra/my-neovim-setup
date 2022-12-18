vim.g.mapleader = " "

-- Normal
-- Basic
vim.keymap.set('n', '<leader>e', ':Exp<cr>')
vim.keymap.set('n', '<leader>w', ':w!<cr>')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
-- vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<leader>p', '"+gP')
vim.keymap.set('n', '{', '{zz')
vim.keymap.set('n', '}', '}zz')
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-Up>', '<cmd>vertical resize +3<cr>')
vim.keymap.set('n', '<A-Down>', '<cmd>vertical resize -3<cr>')
vim.keymap.set('n', '<A-j>', '<C-d>zz')
vim.keymap.set('n', '<A-k>', '<C-u>zz')

-- Insert
-- Basic
vim.keymap.set('i', 'jk', '<Esc>')

-- Visual
-- Basic
vim.keymap.set('v', 'oo', '<Esc>')
