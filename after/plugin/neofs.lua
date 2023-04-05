local ok, neofs = pcall(require, 'neofs')
if not ok then return end

local reopen = function()
  vim.cmd('lua NeofsQuit()')
  neofs.open()
end

neofs.setup {
  devicons = true,
  mappings = {
    ['<A-f>'] = function(fm)
      local name = vim.fn.input('New File: ')
      if name == "" then
        return
      end
      vim.cmd('lua NeofsQuit()')
      vim.cmd('!touch ' .. name)
      neofs.open()
    end,
    ['<A-d>'] = function(fm)
      local item = fm.navigator.item()
      local message = string.format("Are you sure you want to delete '%s'?", item.name)

      if recursive then
        message = message .. " [RECURSIVE]"
      end

      if vim.fn.confirm(message, '&Yes\n&No') == 1 then
        if item.stat.type == "file" then
          vim.loop.fs_unlink(item.path)
          vim.cmd('lua NeofsQuit()')
          vim.cmd('bd ' .. item.path)
          neofs.open()
        else
          if recursive then
            fs_delete_rec(item)
            reopen()
          else
            vim.loop.fs_rmdir(item.path)
            reopen()
          end
        end
      end
    end,
    ['<leader>e'] = function ()
      vim.cmd('lua NeofsQuit()')
    end
  }
}

local bind = vim.keymap.set

bind('n', '<leader>e', function()
  neofs.open()
end, { noremap = true })
