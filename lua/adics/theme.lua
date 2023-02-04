-- local ok, onedark = pcall(require, 'onedark')
-- if not ok then return end
--
-- onedark.setup {
--   style = 'deep',
--   transparent = true,
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
--     keywords = { italic = false }
--   },
--   lualine_bold = true,
--   transparent = true
-- }
--
-- vim.cmd("colorscheme tokyonight")

local ok, gt = pcall(require, 'github-theme')
if not ok then return end

gt.setup {
  theme_style = "dark_default",
  comment_style = "none",
  keyword_style = "none",
  dark_sidebar = false,
  colors = { error = '#ff0000' },
  transparent = true
}

-- local ok, at = pcall(require, "astrotheme")
-- if not ok then return end
--
-- at.setup()
-- vim.cmd("colorscheme astrodark")
