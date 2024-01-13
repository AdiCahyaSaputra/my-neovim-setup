vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.signcolumn = "yes"

vim.o.wrap = false
vim.o.relativenumber = true
vim.o.number = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.showmode = false
vim.o.shell = "cmd.exe"
-- vim.o.showtabline = 2
vim.opt.hidden = true
vim.opt.autoindent = true
vim.opt.cursorline = false
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.backspace = { "start", "eol", "indent" }

vim.opt.background = "dark"
vim.opt.clipboard = "unnamedplus" -- Required dependecies. In my wayland is 'wl-clipboard' or in ubuntu is 'xclip'

vim.g.skip_ts_context_commentstring_module = true
vim.opt.statusline = " %f %m %= %y %l:%c "

vim.opt.mouse = ""
