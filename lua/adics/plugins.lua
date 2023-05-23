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

local ok, lazy = pcall(require, "lazy")
if not ok then return end

lazy.setup({
  { "navarasu/onedark.nvim",          enabled = false },
  { "rockerBOO/boo-colorscheme-nvim", enabled = false },
  { "projekt0n/github-nvim-theme",    enabled = false },
  { "folke/tokyonight.nvim",          enabled = false },
  { "EdenEast/nightfox.nvim",         enabled = false },
  { "catppuccin/nvim",                enabled = false },
  { "Tsuzat/NeoSolarized.nvim",       lazy = false,   priority = 1000 },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require "colorizer".setup()
    end,
    enabled = false
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/nvim-cmp",
    },
    event = "VeryLazy",
    config = function()
      require("config.lsp")
    end
  },

  {
    "Exafunction/codeium.vim",
    config = function()
      require("config.codeium")
    end,
    event = "VeryLazy",
    enabled = false
  },

  { 'akinsho/toggleterm.nvim', version = "*",     config = true },
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    event = "VeryLazy",
    config = function()
      require('config.lspsaga')
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    }
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    config = function()
      require('config.indentbl')
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    config = function()
      require('config.treesitter')
    end
  },
  { "windwp/nvim-ts-autotag",  event = "VeryLazy" },
  { "windwp/nvim-autopairs",   config = true,     event = "VeryLazy" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },

  { "nvim-telescope/telescope-ui-select.nvim", event = "VeryLazy" },
  { "numToStr/Comment.nvim",                   config = true,     event = "VeryLazy" },
  { "phaazon/hop.nvim",                        branch = "v2",     config = true,     event = "VeryLazy" },
  { "lewis6991/gitsigns.nvim",                 config = true,     event = "VeryLazy" },
  { "iamcco/markdown-preview.nvim",            ft = "markdown" },

  {
    "karb94/neoscroll.nvim",
    event = "BufEnter",
    enabled = false
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },
  {
    'romgrk/barbar.nvim',
    init = function() vim.g.barbar_auto_setup = false end,
    config = true,
    event = "BufEnter",
    enabled = false
  },

  {
    'akinsho/bufferline.nvim',
    config = function()
      local ok, bufferline = pcall(require, 'bufferline')
      if not ok then return end

      bufferline.setup {
        options = {
          offsets = {
            { filetype = "NvimTree", text = "", padding = 1 },
            { filetype = "neo-tree", text = "", padding = 1 },
            { filetype = "Outline",  text = "", padding = 1 },
          },
          max_name_length = 14,
          max_prefix_length = 13,
          tab_size = 20,
          separator_style = { " » ", ' » ' },
          indicator = {
            style = 'none'
          },
          style_preset = bufferline.style_preset.no_italic
        },
      }
    end,
    event = "BufEnter",
  },

  "goolord/alpha-nvim",
  { "David-Kunz/markid",                           enabled = false },
  { "nvim-treesitter/nvim-treesitter-textobjects", event = "VeryLazy" },
  {
    "kylechui/nvim-surround",
    config = true,
    event = "VeryLazy"
  },
})
