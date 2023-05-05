if vim.fn.has("termguicolors") then
  vim.opt.termguicolors = true
end

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

-- local ok, tokyonight = pcall(require, 'tokyonight')
-- if not ok then return end
--
-- tokyonight.setup {
--   style = "night",
--   styles = {
--     comments = { italic = false },
--     keywords = { italic = false },
--     sidebars = "dark",
--     float = "dark",
--   },
--   lualine_bold = true,
--   transparent = true
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
--   theme = 'crimson_moonlight'
-- })

local ok, cp = pcall(require, 'catppuccin')
if not ok then return end

cp.setup {
  flavour = 'mocha',
  transparent_background = true,
  term_colors = true,
  no_italic = true,
  highlight_overrides = {
    all = function(colors)
      return {
        LineNr = { fg = '#ffccaf' }
      }
    end
  }
}

vim.cmd("colorscheme catppuccin")
