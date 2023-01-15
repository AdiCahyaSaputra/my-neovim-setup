local ok, neoscroll = pcall(require, 'neoscroll')
if not ok then return end

neoscroll.setup()

local t = {}

t['<A-j>'] = { 'scroll', {'vim.wo.scroll', 'true', '250'} }
t['<A-k>'] = { 'scroll', {'-vim.wo.scroll', 'true', '250'} }

require'neoscroll.config'.set_mappings(t)
