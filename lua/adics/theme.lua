-- if vim.fn.has("termguicolors") then
--   vim.opt.termguicolors = true
-- end

vim.opt.termguicolors = false

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

-- local ok, onedarkpro = pcall(require, 'onedarkpro')
-- if not ok then return end
--
-- onedarkpro.setup {
--   options = {
--     cursorline = true,
--     terminal_colors = true,
--     transparency = false
--   }
-- }
--
-- vim.cmd("colorscheme onedark_dark")

local ok, tokyodark = pcall(require, "tokyodark")
if not ok then return end

tokyodark.setup({
  transparent_background = true,                                         -- set background to transparent
  gamma = 1.00,                                                          -- adjust the brightness of the theme
  styles = {
    comments = { italic = false },                                       -- style for comments
    keywords = { italic = false },                                       -- style for keywords
    identifiers = { italic = false },                                    -- style for identifiers
    functions = {},                                                      -- style for functions
    variables = {},                                                      -- style for variables
  },
  custom_highlights = {} or function(highlights, palette) return {} end, -- extend highlights
  custom_palette = {} or function(palette) return {} end,                -- extend palette
  terminal_colors = true,                                                -- enable terminal colors
})

vim.cmd [[colorscheme tokyodark]]

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

-- local ok, gt = pcall(require, 'github-theme')
-- if not ok then return end
--
-- gt.setup {
--   theme_style = "dark",
--   comment_style = "none",
--   keyword_style = "none",
--   dark_sidebar = true,
--   colors = { error = '#ff0000' },
--   transparent = true
-- }

-- local ok, nf = pcall(require, 'nightfox')
-- if not ok then return end
--
-- nf.setup {
--   options = {
--     transparent = true,
--     inverse = {
--       search = true
--     }
--   },
--   groups = {
--     carbonfox = {
--       LineNr = { fg = "palette.red" },
--       OnYank = { fg = "#000000", bg = "#ffffff" },
--       BufferCurrent = { bg = "#000000" },
--       BufferCurrentIndex = { bg = "#000000" },
--       BufferCurrentMod = { bg = "#000000" },
--       BufferCurrentSign = { bg = "#000000" }
--     }
--   }
-- }
--
-- vim.cmd("colorscheme carbonfox")

-- local ok, boo = pcall(require, 'boo-colorscheme')
-- if not ok then return end
--
-- boo.use({
--   italic = false,
--   theme = 'crimson_moonlight',
-- })

-- local ok, cp = pcall(require, 'catppuccin')
-- if not ok then return end
--
-- cp.setup {
--   flavour = 'mocha',
--   transparent_background = true,
--   term_colors = true,
--   no_italic = true,
--   highlight_overrides = {
--     all = function(colors)
--       return {
--         LineNr = { fg = '#ffccaf' }
--       }
--     end
--   }
-- }
--
-- vim.cmd("colorscheme catppuccin")

-- local ok, neosolarized = pcall(require, 'NeoSolarized')
-- if not ok then return end
--
-- neosolarized.setup {
--   style = "dark",         -- "dark" or "light"
--   transparent = true,     -- true/false; Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--   enable_italics = false, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
--   styles = {
--     -- Style to be applied to different syntax groups
--     comments = { italic = false },
--     keywords = { italic = false },
--     functions = { italic = false },
--     variables = { italic = false },
--     string = { italic = false },
--     underline = true,  -- true/false; for global underline
--     undercurl = false, -- true/false; for global undercurl
--   },
-- }
--
-- vim.cmd [[colorscheme NeoSolarized]]

-- local ok, noirbuddy = pcall(require, 'noirbuddy')
-- if not ok then return end
--
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
