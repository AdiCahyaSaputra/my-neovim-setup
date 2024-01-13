-- local ok, solarized = pcall(require, "solarized-osaka")
-- if not ok then
--   return
-- end
--
-- solarized.setup({
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   transparent = true,    -- Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
--   styles = {
--     -- Style to be applied to different syntax groups
--     -- Value is any valid attr-list value for `:help nvim_set_hl`
--     comments = { italic = false },
--     keywords = { italic = false },
--     functions = { italic = false },
--     variables = { italic = false },
--     -- Background styles. Can be "dark", "transparent" or "normal"
--     sidebars = "transparent",      -- style for sidebars, see below
--     floats = "transparent",        -- style for floating windows
--   },
--   sidebars = { "qf", "help" },     -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--   day_brightness = 0.3,            -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--   hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--   dim_inactive = true,             -- dims inactive windows
--   lualine_bold = true,             -- When `true`, section headers in the lualine theme will be bold
--
--   --- You can override specific color groups to use other groups or a hex color
--   --- function will be called with a ColorScheme table
--   ---@param colors ColorScheme
--   on_colors = function(colors) end,
--
--   --- You can override specific highlights to use other groups or a hex color
--   --- function will be called with a Highlights and ColorScheme table
--   ---@param highlights Highlights
--   ---@param colors ColorScheme
--   on_highlights = function(highlights, colors)
--     -- highlights.WinSeparator.fg = "none"
--   end,
-- })
--
-- vim.cmd([[colorscheme solarized-osaka-night]])

local ok, tokyonight = pcall(require, "tokyonight")
if not ok then
	return
end

tokyonight.setup({
	style = "night",
	transparent = true,
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		sidebars = "transparent",
		floats = "transparent",
	},
	dim_inactive = true,
	on_highlights = function(hl, c)
		hl.TelescopeNormal = {
			bg = c.bg_dark,
			fg = c.fg_dark,
		}
		hl.TelescopeBorder = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopePromptNormal = {
			bg = c.bg_dark,
		}
		hl.TelescopePromptBorder = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopePromptTitle = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopePreviewTitle = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopeResultsTitle = {
			bg = c.dark5,
			fg = c.bg_dark,
		}
	end,
})

vim.cmd([[colorscheme tokyonight]])
