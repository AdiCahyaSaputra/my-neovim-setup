local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'html',
  'cssls',
  'tsserver',
  'intelephense',
  'sumneko_lua'
})

lsp.on_attach(function(client, bufnr)

  local file_name = vim.fn.expand('%:t')
  local tfile_name = {}

  for str in string.gmatch(file_name, "[^.]+") do
    table.insert(tfile_name, str)
  end

  if tfile_name[2] == 'blade' then
    vim.cmd("TSBufDisable highlight") -- Disable Treesitter Highlight in blade
  end

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopt = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopt)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopt)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopt)
  vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format({ async = true }) end, bufopt)
  vim.keymap.set('n', '<leader>dl', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  vim.keymap.set('n', '<leader>dh', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

end)

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-Space>'] = cmp.mapping.complete()
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = false
})
