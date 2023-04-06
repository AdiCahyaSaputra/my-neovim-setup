local ok, neofs = pcall(require, 'neofs')
if not ok then return end

neofs.setup {
  devicons = true,
  mappings = {
    ['<A-f>'] = function(fm)
      local create_file = 'lua NeofsCreateFile()'
      vim.cmd(create_file)
    end,
    ['<A-d>'] = function(fm)
      local delete = 'lua NeofsDelete()'
      vim.cmd(delete)
    end,
    ['<leader>e'] = function ()
      local quit = 'lua NeofsQuit()'
      vim.cmd(quit)
    end
  }
}

local bind = vim.keymap.set

bind('n', '<leader>e', function()
  neofs.open()
end, { noremap = true })
