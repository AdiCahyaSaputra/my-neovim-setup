return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Install Plugins here
	
	-- LSP first hehe
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	-- Auto complete
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'

	-- Neotree
	use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

	-- Barbar (tabline)
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Onedark Theme
	use 'navarasu/onedark.nvim'
	
	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	use 'windwp/nvim-ts-autotag'

	-- Comment
	use 'numToStr/Comment.nvim'

	-- Autopair
	use "windwp/nvim-autopairs"

	-- Indent
	use "lukas-reineke/indent-blankline.nvim"

	-- Wakatime
	use 'wakatime/vim-wakatime'

	-- Friendly Snippets
	use "rafamadriz/friendly-snippets"
	
	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {'nvim-telescope/telescope-ui-select.nvim' }

	-- Lsp Signature 
	use "ray-x/lsp_signature.nvim"

	-- Quick Lint 
	use {
		'quick-lint/quick-lint-js', 
		rtp = 'plugin/vim/quick-lint-js.vim',
		opt = true
	}

end)
