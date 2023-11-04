require("adics")
vim.cmd("au TextYankPost * silent! lua vim.highlight.on_yank()")

vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})

vim.loader.enable()
