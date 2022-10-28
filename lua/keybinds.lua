-- Functional
function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
	map('n', shortcut, command)
end

function imap(shortcut, command)
	map('i', shortcut, command)
end

function vmap(shortcut, command)
	map('v', shortcut, command)
end

vim.g.mapleader = ' ' -- Space
imap('jk', '<Esc>')
nmap('<space>w', '<cmd>w!<cr>')

-- Lsp Diagnostic
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>dh', '<cmd>Lspsaga diagnostic_jump_prev<CR>',opts)
vim.keymap.set('n', '<space>dl', '<cmd>Lspsaga diagnostic_jump_next<CR>',opts)

-- Lsp Formatting / Code Action
nmap('<space>c', '<cmd>Lspsaga code_action<cr>')
nmap('<space>lf', '<cmd>lua vim.lsp.buf.format()<cr>')

-- Neo tree
nmap('<Leader>e', '<cmd>Neotree toggle<cr>') -- Toggle Window
nmap('<Leader>o', '<cmd>Neotree focus<cr>') -- Toggle Window

-- Bufferline
nmap('<S-h>', '<cmd>BufferPrevious<cr>')
nmap('<S-l>', '<cmd>BufferNext<cr>')
nmap('<S-c>', '<cmd>BufferClose<cr>')

-- Telescope
nmap('<space>ff', '<cmd>Telescope find_files<cr>')

-- Semicolon
nmap('<space>;', '<C-o>A;')

-- Zenmode
nmap('<space>z', '<cmd>ZenMode<cr>')

-- Highlight Str
vmap('<space>h', ':<c-u>HSHighlight 4<CR>')
vmap('hr', ':<c-u>HSRmHighlight<CR>')
