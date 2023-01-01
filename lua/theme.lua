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

local ok, tokyonight = pcall(require, 'tokyonight')
if not ok then return end

tokyonight.setup {
  style = "night",
  styles = {
    comments = { italic = false },
    keywords = { italic = false }
  },
  lualine_bold = true
}

vim.cmd("colorscheme tokyonight")
