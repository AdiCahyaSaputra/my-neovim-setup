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
	{
		"folke/tokyonight.nvim",
		enabled = false,
	},
	-- { "craftzdog/solarized-osaka.nvim", lazy = false, priority = 1000 },
	{ "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },
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
		"nvimtools/none-ls.nvim",
		config = function()
			require("config.null_ls")
		end,
		enabled = true,
		event = "VeryLazy",
	},
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		event = "VeryLazy",
		config = function()
			require("config.lspsaga")
		end,
	},
	{ "nvim-tree/nvim-web-devicons", config = true },
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		event = "VeryLazy",
		config = function()
			require("config.treesitter")
		end,
	},
	{ "windwp/nvim-ts-autotag", event = "VeryLazy" },
	{ "windwp/nvim-autopairs", config = true, event = "VeryLazy" },
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{ "nvim-telescope/telescope-ui-select.nvim", event = "VeryLazy" },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("config.comment")
		end,
		event = "VeryLazy",
	},
	{ "phaazon/hop.nvim", branch = "v2", config = true, event = "VeryLazy" },
	{ "lewis6991/gitsigns.nvim", config = true, event = "VeryLazy", enabled = false },
	{ "iamcco/markdown-preview.nvim", ft = "markdown" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		enabled = true,
		event = "VeryLazy",
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
						{ filetype = "NvimTree", text = "", padding = 1 },
						{ filetype = "neo-tree", text = "File Tree", padding = 1 },
						{ filetype = "Outline", text = "", padding = 1 },
					},
					-- diagnostics = "nvim_lsp",
					max_name_length = 14,
					max_prefix_length = 13,
					tab_size = 20,
					separator_style = { " » ", " » " },
					-- indicator = {
					-- 	style = "none",
					-- },
					style_preset = bufferline.style_preset.no_italic,
				},
			})
		end,
		event = "VeryLazy",
		enabled = true,
	},

	{ "goolord/alpha-nvim", enabled = true },
	{
		"kylechui/nvim-surround",
		config = true,
		event = "VeryLazy",
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = true,
		event = "VeryLazy",
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("config.trouble")
		end,
		event = "VeryLazy",
	},
})
