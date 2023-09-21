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
if not ok then
  return
end

lazy.setup({
  { "navarasu/onedark.nvim",       enabled = false },
  { "projekt0n/github-nvim-theme", enabled = false },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  { "EdenEast/nightfox.nvim",         enabled = false },
  {
    "jesseleite/nvim-noirbuddy",
    dependencies = {
      "tjdevries/colorbuddy.nvim",
      branch = "dev",
    },
    enabled = false,
  },
  { "Tsuzat/NeoSolarized.nvim",       lazy = false,   priority = 1000 },
  { "catppuccin/nvim",                enabled = false },
  { "rockerBOO/boo-colorscheme-nvim", enabled = false },
  { "AlexvZyl/nordic.nvim",           enabled = true },
  { "tiagovla/tokyodark.nvim",        enabled = true },
  { "olimorris/onedarkpro.nvim",      enabled = false },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
    enabled = false,
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
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("config.null_ls")
    end,
    enabled = true,
  },

  {
    "andweeb/presence.nvim",
  },

  {
    "Exafunction/codeium.vim",
    config = function()
      require("config.codeium")
    end,
    event = "VeryLazy",
    enabled = false,
  },

  { "akinsho/toggleterm.nvim", version = "*",     config = true },
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    event = "VeryLazy",
    config = function()
      require("config.lspsaga")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    config = function()
      require("config.indentbl")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    config = function()
      require("config.treesitter")
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  { "windwp/nvim-ts-autotag",  event = "VeryLazy" },
  { "windwp/nvim-autopairs",   config = true,     event = "VeryLazy" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  { "nvim-telescope/telescope-ui-select.nvim", event = "VeryLazy" },
  { "numToStr/Comment.nvim",                   config = true,     event = "VeryLazy" },
  { "phaazon/hop.nvim",                        branch = "v2",     config = true,     event = "VeryLazy" },
  { "lewis6991/gitsigns.nvim",                 config = true,     event = "VeryLazy" },
  { "iamcco/markdown-preview.nvim",            ft = "markdown" },

  {
    "karb94/neoscroll.nvim",
    event = "BufEnter",
    enabled = false,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    enabled = false,
  },

  {
    "akinsho/bufferline.nvim",
    config = function()
      local ok, bufferline = pcall(require, "bufferline")
      if not ok then
        return
      end

      bufferline.setup({
        options = {
          offsets = {
            { filetype = "NvimTree", text = "",          padding = 1 },
            { filetype = "neo-tree", text = "File Tree", padding = 1 },
            { filetype = "Outline",  text = "",          padding = 1 },
          },
          max_name_length = 14,
          max_prefix_length = 13,
          tab_size = 20,
          separator_style = { " » ", " » " },
          -- indicator = {
          --   style = "none",
          -- },
          style_preset = bufferline.style_preset.no_italic,
        },
      })
    end,
    event = "BufEnter",
    enabled = true,
  },

  "goolord/alpha-nvim",
  { "David-Kunz/markid",                           enabled = false },
  { "nvim-treesitter/nvim-treesitter-textobjects", event = "VeryLazy" },
  {
    "kylechui/nvim-surround",
    config = true,
    event = "VeryLazy",
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
    event = "BufEnter",
  },
  {
    "levouh/tint.nvim",
    config = function()
      require("tint").setup({
        tint = -30,   -- Darken colors, use a positive value to brighten
        saturation = 0.6, -- Saturation to preserve
        -- transforms = require("tint").transforms.SATURATE_TINT, -- Showing default behavior, but value here can be predefined set of transforms
        -- tint_background_colors = true,                        -- Tint background portions of highlight groups
        highlight_ignore_patterns = { "WinSeparator", "Status.*" }, -- Highlight group patterns to ignore, see `string.find`
        -- window_ignore_function = function(winid)
        --   local bufid = vim.api.nvim_win_get_buf(winid)
        --   local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
        --   local floating = vim.api.nvim_win_get_config(winid).relative ~= ""
        --
        --   -- Do not tint `terminal` or floating windows, tint everything else
        --   return buftype == "terminal" or floating
        -- end
      })
    end,
    enabled = false,
  },
})
