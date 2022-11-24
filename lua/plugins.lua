local ok, packer = pcall(require, 'packer')
if not ok then
  print("Packer Not Installed!")
  return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Lsp
  -- use 'williamboman/nvim-lsp-installer' -- futher dev has moved to mason.nvim
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use 'neovim/nvim-lspconfig'

  -- LSP saga
  use 'glepnir/lspsaga.nvim'

  -- Auto Complete
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer' -- Completion source for buffer words
  use 'hrsh7th/cmp-path' -- Path soruce
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'

  -- Auto Pairs
  use "windwp/nvim-autopairs"

  -- Onedark
  use 'navarasu/onedark.nvim'
  use 'olimorris/onedarkpro.nvim'

  -- Neosolarized
  use 'Tsuzat/NeoSolarized.nvim'

  -- Neo tree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- Barbar
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'windwp/nvim-ts-autotag'

  -- Comment
  use 'numToStr/Comment.nvim'

  -- Indent
  use "lukas-reineke/indent-blankline.nvim"

  -- Friendly Snippets
  use "rafamadriz/friendly-snippets"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'nvim-telescope/telescope-ui-select.nvim'

  -- Lsp Signature
  use 'ray-x/lsp_signature.nvim'

  -- Git sign
  use 'lewis6991/gitsigns.nvim'

  -- Lspkind
  use 'onsails/lspkind.nvim'

  -- Null Ls
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Colorscheme creator
  use 'rktjmp/lush.nvim'

  -- Monark
  use 'doums/monark.nvim'

  -- Impatient
  use 'lewis6991/impatient.nvim'

end)
