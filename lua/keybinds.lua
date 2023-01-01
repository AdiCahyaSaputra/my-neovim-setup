vim.g.mapleader = " "

local bind = vim.keymap.set

bind('n', '<leader>w', '<cmd>w<cr>')
bind('n', '<leader>e', '<cmd>NeoTreeFocusToggle<cr>')
bind('n', '<leader>o', '<cmd>NeoTreeFocus<cr>')

bind('n', '<A-j>', '<C-d>zz')
bind('n', '<A-k>', '<C-u>zz')

bind('n', '<A-l>', '<C-w>l')
bind('n', '<A-h>', '<C-w>h')

bind('n', '<A-Up>', '<cmd>vertical resize +3<cr>')
bind('n', '<A-Down>', '<cmd>vertical resize -3<cr>')

bind('n', 'H', '<cmd>BufferPrevious<cr>')
bind('n', 'L', '<cmd>BufferNext<cr>')
bind('n', 'C', '<cmd>BufferClose<cr>')

bind('', '<leader>al', '<cmd>HopLineStart<cr>', { noremap = true, silent = true })
bind('', '<leader>aw', '<cmd>HopWord<cr>', { noremap = true, silent = true })
bind('', '<leader>aa', '<cmd>HopChar1<cr>', { noremap = true, silent = true })

bind('i', 'jk', '<Esc>')
