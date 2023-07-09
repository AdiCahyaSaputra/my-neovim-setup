require('adics')
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank()')
-- vim.cmd('autocmd BufRead,BufNewFile *.blade.php set filetype=blade')
