local bind = vim.keymap.set

bind('i', '<A-g>', function ()
  return vim.fn['codeium#Accept']()
end, { expr = true })

bind('i', '<A-x>', function ()
  return vim.fn['codeium#Clear']()
end, { expr = true })

