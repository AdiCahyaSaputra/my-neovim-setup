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

  -- Lspsaga Diagnostic
  bind("n", "<leader>dl", "<cmd>Lspsaga diagnostic_jump_next<cr>", bufopt)
  bind("n", "<leader>dh", "<cmd>Lspsaga diagnostic_jump_prev<cr>", bufopt)
end)

local cmp = require("cmp")
local luasnip = require("luasnip")

luasnip.filetype_extend("blade", { "html" })
luasnip.filetype_extend("php", { "html" })

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "buffer" },
    { name = "luasnip" },
    { name = "nvim_lsp_signature_help" },
  },
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
      select = true,
    }),
  }),
  formatting = {
    format = require("lspkind").cmp_format({
      mode = "symbol",
      maxwidth = 50,
      ellipsis_char = "...",
    }),
    fields = { "kind", "abbr", "menu" },
  },
})

require("luasnip.loaders.from_vscode").lazy_load({
  paths = { "~/AppData/Local/nvim/snippet/", "~/AppData/Local/nvim-data/lazy/friendly-snippets/" },
})

require("mason").setup({})
require("mason-lspconfig").setup({
  handlers = {
    lsp.default_setup,
    html = function()
      require("lspconfig").html.setup({
        filetypes = { "html", "blade" },
      })
    end,
  },
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = " \u{ea71} ",
  },
  signs = true,
})
