-- Settings Nvim
require('settings.keybinding')
require('settings.options')

-- Plugins Manager
require('plugins.packer')

-- LSP
require('lsp.lsp_setting')

-- Auto Cmp
-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

require('plugins.cmp')

-- Lualine
require('plugins.lualine')

-- Onedark
require('plugins.onedark')

-- Tressiter
require('plugins.treesitter')

-- Comment
require('plugins.comment')

-- Autopair
require('plugins.autopair')

-- Indent Blankline Guide
require('plugins.indentblankline')

-- Fsnippet
require('plugins.fsnippet')
