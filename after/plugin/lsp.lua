local ok, lsp = pcall(require, 'lsp-zero')
if not ok then return end

lsp.preset('recommended')

lsp.ensure_installed({
  'html',
  'cssls',
  'tsserver',
  'intelephense',
  'sumneko_lua'
})

lsp.set_preferences {
  sign_icon = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I',
  }
}

lsp.on_attach(function(client, bufnr)

  -- local file_name = vim.fn.expand('%:t')
  -- local tfile_name = {}
  --
  -- for str in string.gmatch(file_name, "[^.]+") do
  --   table.insert(tfile_name, str)
  -- end
  --
  -- if tfile_name[2] == 'blade' then
  --   vim.cmd("TSBufDisable highlight") -- Disable Treesitter Highlight in blade
  -- end

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopt = { noremap = true, silent = true, buffer = bufnr }
  local bind = vim.keymap.set

  bind('n', 'gd', "<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", bufopt)
  bind('n', 'K', '<cmd>Lspsaga hover_doc<cr>', bufopt)
  bind('n', '<leader>ca', '<cmd>Lspsaga code_action<cr>', bufopt)
  bind('n', '<leader>lf', function() vim.lsp.buf.format({ async = true }) end, bufopt)
  bind('n', '<leader>dl', '<cmd>Lspsaga diagnostic_jump_next<cr>')
  bind('n', '<leader>dh', '<cmd>Lspsaga diagnostic_jump_prev<cr>')

  -- if client.server_capabilities.documentFormattingProvider then
  --   vim.api.nvim_create_autocmd("BufWritePre", {
  --     group = vim.api.nvim_create_augroup("Format", { clear = true }),
  --     buffer = bufnr,
  --     callback = function()
  --       vim.lsp.buf.format({ async = true })
  --     end
  --   })
  -- end

end)


local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-Space>'] = cmp.mapping.complete()
})

lsp.setup_nvim_cmp({
  sources = {
    { name = 'path' },
    { name = 'nvim_lsp', keyword_length = 3 },
    { name = 'buffer', keyword_length = 3 },
    { name = 'luasnip', keyword_length = 2 },
    { name = 'nvim_lsp_signature_help' },
  },
  mapping = cmp_mappings,
  formatting = {
    format = require("lspkind").cmp_format({
      mode = "symbol_text",
      maxwidth = 50,
      ellipsis_char = "..."
    })
  }
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = false
})
