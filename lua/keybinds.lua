vim.g.mapleader = " "

local bind = vim.keymap.set

bind('n', '<leader>w', '<cmd>w<cr>')
bind('n', '<leader>e', '<cmd>Exp<cr>')

bind('n', 'L', '<cmd>BufferNext<cr>')
bind('n', 'H', '<cmd>BufferPrevious<cr>')
bind('n', 'C', '<cmd>BufferClose<cr>')

bind('i', 'jk', '<Esc>')
