require("adics")
vim.cmd("au TextYankPost * silent! lua vim.highlight.on_yank()")
-- vim.cmd("au BufNewFile,BufRead *.blade.php set ft=blade")

vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})
