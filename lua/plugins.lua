local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)

local ok, lazy = pcall(require, 'lazy')
if not ok then return end

lazy.setup({
  'navarasu/onedark.nvim',
  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    }
  },
  {'glepnir/lspsaga.nvim', branch = 'main'},
  'nvim-treesitter/nvim-treesitter',
  'windwp/nvim-ts-autotag',
  {
    'windwp/nvim-autopairs',
    config = true -- shorthand
  },
  "romgrk/barbar.nvim",
  "lukas-reineke/indent-blankline.nvim"
})
