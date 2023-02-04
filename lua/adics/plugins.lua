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
  { "navarasu/onedark.nvim"},
  {"projekt0n/github-nvim-theme", lazy = false, priority = 1000  },
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
    }
  },
  {
    "glepnir/lspsaga.nvim", 
    branch = "main", 
    event = "BufRead",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    }
  },

  "akinsho/bufferline.nvim",

  { "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },
  { "lukas-reineke/indent-blankline.nvim", event = "BufEnter" },

  "nvim-treesitter/nvim-treesitter",
  "windwp/nvim-ts-autotag",

  { "windwp/nvim-autopairs", config = true, event = "InsertEnter" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },

  "nvim-telescope/telescope-ui-select.nvim",

  { "numToStr/Comment.nvim", config = true, event = "BufEnter" },
  { "folke/tokyonight.nvim"},
  { "phaazon/hop.nvim", branch = "v2", config = true, event = "BufEnter" },
  { "lewis6991/gitsigns.nvim", config = true, event = "BufEnter" },
  { "iamcco/markdown-preview.nvim", ft = "markdown" },

  {
    "karb94/neoscroll.nvim",
    event = "BufEnter",
    enabled = false
  },

  "goolord/alpha-nvim",
  "David-Kunz/markid",
  "nvim-treesitter/nvim-treesitter-textobjects",
  {
    "kylechui/nvim-surround",
    config = true
  }
})
