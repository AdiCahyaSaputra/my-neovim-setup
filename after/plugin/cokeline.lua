local ok, cokeline = pcall(require, 'cokeline')
if not ok then return end

local get_hex = require('cokeline/utils').get_hex

cokeline.setup {
  show_if_buffers_are_at_least = 2,
  default_hl = {
    fg = function(buffer)
      return
        buffer.is_focused
        and get_hex('Normal', 'fg')
         or get_hex('Comment', 'fg')
    end,
    bg = get_hex('ColorColumn', 'bg'),
  },
  components = {
    {
      text = '[ ',
    },
    {
      text = function(buffer)
        return buffer.devicon.icon
      end,
      fg = function(buffer)
        return buffer.devicon.color
      end,
    },
    {
      text = ' ',
    },
    {
      text = function(buffer) return buffer.filename .. '  ' end,
      style = function(buffer)
        return buffer.is_focused and 'bold' or nil
      end,
    },
    {
      text = '',
      delete_buffer_on_left_click = true,
    },
    {
      text = ' ]',
    },
  },
}

local map = vim.api.nvim_set_keymap

map('n', 'H',   '<Plug>(cokeline-focus-prev)',  { silent = true })
map('n', 'L',     '<Plug>(cokeline-focus-next)',  { silent = true })
map('n', 'C',     '<cmd>bdelete<cr>',  { silent = true })
map('n', '<leader>H', '<Plug>(cokeline-switch-prev)', { silent = true })
map('n', '<Leader>L', '<Plug>(cokeline-switch-next)', { silent = true })

for i = 1,9 do
  map('n', ('<F%s>'):format(i),      ('<Plug>(cokeline-focus-%s)'):format(i),  { silent = true })
  map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-switch-%s)'):format(i), { silent = true })
end

