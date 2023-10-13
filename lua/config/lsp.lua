local ok, lsp = pcall(require, "lsp-zero")
if not ok then
  return
end

lsp.on_attach(function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  local bufopt = { noremap = true, silent = true, buffer = bufnr }
  local bind = vim.keymap.set

  -- Use null ls for formatting
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true

  bind("n", "gd", "<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", bufopt)

  bind("n", "K", "<cmd>Lspsaga hover_doc<cr>", bufopt)

  bind("n", "<leader>ca", vim.lsp.buf.code_action, bufopt)
  bind("n", "<leader>lf", function()
    vim.lsp.buf.format({ async = true })
  end, bufopt)
  bind("n", "<space>pf", "<cmd>silent !prettier . --write --cache<cr>", { silent = true })

  -- Lspsaga Diagnostic
  bind("n", "<leader>dl", "<cmd>Lspsaga diagnostic_jump_next<cr>", bufopt)
  bind("n", "<leader>dh", "<cmd>Lspsaga diagnostic_jump_prev<cr>", bufopt)
end)

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  }),
})

require("luasnip.loaders.from_vscode").lazy_load()

lsp.setup()

vim.diagnostic.config({
  virtual_text = {
    prefix = "[",
    suffix = "]",
  },
  signs = false,
})
