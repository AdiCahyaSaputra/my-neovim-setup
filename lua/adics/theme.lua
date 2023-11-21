-- if vim.fn.has("termguicolors") then
--   vim.opt.termguicolors = true
-- end

-- vim.opt.termguicolors = true

-- local ok, onedark = pcall(require, 'onedark')
-- if not ok then return end
--
-- onedark.setup {
--   style = 'deep',
--   transparent = false,
--   code_style = {
--     comments = 'none'
--   }
-- }
--
-- onedark.load()

-- local ok, onedarkpro = pcall(require, "onedarkpro")
-- if not ok then
--   return
-- end
--
-- onedarkpro.setup({
--   options = {
--     cursorline = true,
--     terminal_colors = true,
--     transparency = false,
--   },
-- })
--
-- vim.cmd("colorscheme onedark_dark")

-- local ok, tokyodark = pcall(require, "tokyodark")
-- if not ok then
--   return
-- end
--
-- tokyodark.setup({
--   transparent_background = true,    -- set background to transparent
--   gamma = 1.00,                     -- adjust the brightness of the theme
--   styles = {
--     comments = { italic = false },  -- style for comments
--     keywords = { italic = false },  -- style for keywords
--     identifiers = { italic = false }, -- style for identifiers
--     functions = {},                 -- style for functions
--     variables = {},                 -- style for variables
--   },
--   custom_highlights = {} or function(highlights, palette)
--     return {}
--   end, -- extend highlights
--   custom_palette = {} or function(palette)
--     return {}
--   end,                   -- extend palette
--   terminal_colors = true, -- enable terminal colors
-- })
--
-- vim.cmd([[colorscheme tokyodark]])

-- local ok, tokyonight = pcall(require, 'tokyonight')
-- if not ok then return end
--
-- tokyonight.setup {
--   style = "storm",
--   styles = {
--     comments = { italic = false },
--     keywords = { italic = false },
--     sidebars = "dark",
--     float = "dark",
--   },
--   lualine_bold = true,
--   transparent = false
-- }
--
-- vim.cmd("colorscheme tokyonight")

-- local ok, gt = pcall(require, "github-theme")
-- if not ok then
-- 	return
-- end
--
-- gt.setup({
-- 	options = {
-- 		transparent = true,
-- 		terminal_colors = true,
-- 		darken = {
-- 			sidebars = {
-- 				enabled = true,
-- 			},
-- 		},
-- 	},
-- })
--
-- vim.cmd("colorscheme github_dark")

-- local ok, nf = pcall(require, "nightfox")
-- if not ok then
-- 	return
-- end
--
-- nf.setup({
-- 	options = {
-- 		transparent = false,
-- 		inverse = {
-- 			search = true,
-- 		},
-- 	},
-- 	groups = {
-- 		terafox = {
-- 			-- LineNr = { fg = "palette.red" },
-- 		},
-- 	},
-- })
--
-- vim.cmd("colorscheme terafox")

-- local ok, boo = pcall(require, 'boo-colorscheme')
-- if not ok then return end
--
-- boo.use({
--   italic = false,
--   theme = 'crimson_moonlight',
-- })

-- local ok, cp = pcall(require, "catppuccin")
-- if not ok then
-- 	return
-- end
--
-- cp.setup({
-- 	flavour = "mocha",
-- 	transparent_background = false,
-- 	term_colors = true,
-- 	no_italic = true,
-- 	no_underline = true,
-- 	custom_highlights = function(colors)
-- 		return {
-- 			LineNr = { fg = colors.red },
-- 		}
-- 	end,
-- })
--
-- vim.cmd("colorscheme catppuccin")

-- local ok, neosolarized = pcall(require, "NeoSolarized")
-- if not ok then
--   return
-- end
--
-- neosolarized.setup({
--   style = "dark",        -- "dark" or "light"
--   transparent = true,    -- true/false; Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--   enable_italics = false, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
--   styles = {
--     -- Style to be applied to different syntax groups
--     comments = { italic = false },
--     keywords = { italic = false },
--     functions = { italic = false },
--     variables = { italic = false },
--     string = { italic = false },
--     underline = true, -- true/false; for global underline
--     undercurl = false, -- true/false; for global undercurl
--   },
--   on_highlights = function(highlights, colors)
--     highlights.WinSeparator.fg = "#152528"
--     highlights.CursorLineNr.fg = colors.yellow
--   end,
-- })
--
-- vim.cmd([[colorscheme NeoSolarized]])

local ok, solarized = pcall(require, "solarized-osaka")
if not ok then
  return
end

solarized.setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  transparent = true,    -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = false },
    keywords = { italic = false },
    functions = { italic = false },
    variables = { italic = false },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent",      -- style for sidebars, see below
    floats = "transparent",        -- style for floating windows
  },
  sidebars = { "qf", "help" },     -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3,            -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = true,             -- dims inactive windows
  lualine_bold = true,             -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

vim.cmd([[colorscheme solarized-osaka-night]])
-- noirbuddy.setup {
--   preset = 'minimal'
-- }
--
-- require 'nordic'.setup {
--   -- This callback can be used to override the colors used in the palette.
--   on_palette = function(palette) return palette end,
--   -- Enable bold keywords.
--   bold_keywords = true,
--   -- Enable italic comments.
--   italic_comments = false,
--   -- Enable general editor background transparency.
--   transparent_bg = false,
--   -- Enable brighter float border.
--   bright_border = false,
--   -- Reduce the overall amount of blue in the theme (diverges from base Nord).
--   reduced_blue = true,
--   -- Swap the dark background with the normal one.
--   swap_backgrounds = false,
--   -- Override the styling of any highlight group.
--   override = {},
--   -- Cursorline options.  Also includes visual/selection.
--   cursorline = {
--     -- Bold font in cursorline.
--     bold = false,
--     -- Bold cursorline number.
--     bold_number = true,
--     -- Avialable styles: 'dark', 'light'.
--     theme = 'dark',
--     -- Blending the cursorline bg with the buffer bg.
--     blend = 0.7,
--   },
--   noice = {
--     -- Available styles: `classic`, `flat`.
--     style = 'flat',
--   },
--   telescope = {
--     -- Available styles: `classic`, `flat`.
--     style = 'classic',
--   },
--   ts_context = {
--     -- Enables dark background for treesitter-context window
--     dark_background = true,
--   }
-- }
--
-- vim.cmd.colorscheme 'nordic'

-- vim.cmd("colorscheme darcula-solid")
-- vim.cmd("set termguicolors")
