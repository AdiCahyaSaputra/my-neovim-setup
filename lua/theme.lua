local ok, onedark = pcall(require, 'onedark')
if not ok then return end

onedark.setup {
  style = 'deep',
  transparent = true,
  code_style = {
    comments = 'none'
  },
}

onedark.load()

-- local ok, neosolarized = pcall(require, 'NeoSolarized')
-- if not ok then return end
--
-- neosolarized.setup {
--   style = "dark",
--   transparent = true,
--   enable_italics = false,
--   styles = {
--     comments = { italic = false },
--     keywords = { italic = false },
--     string = { italic = false },
--   }
-- }
--
-- vim.cmd [[colorscheme NeoSolarized]]

-- local ok, onedarkpro = pcall(require, 'onedarkpro')
-- if not ok then return end
--
-- onedarkpro.setup {
--   dark_theme = "onedark",
--   options = {
--     transparency = true
--   }
-- }
--
-- vim.cmd("colorscheme onedarkpro")

-- vim.o.termguicolors = true
-- vim.api.nvim_command "colorscheme doubletrouble"
--
-- local ok, everblush = pcall(require, 'everblush')
-- if not ok then return end
--
-- everblush.setup {
--   transparent_background = true,
-- }
