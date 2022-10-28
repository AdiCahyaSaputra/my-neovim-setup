-- local ok, onedark = pcall(require, 'onedark')
-- if not ok then return end
--
-- onedark.setup {
--   style = 'deep',
--   transparent = true,
--   code_style = {
--     comments = 'none'
--   },
-- }
--
-- onedark.load()

local ok, onedarkpro = pcall(require, 'onedarkpro')
if not ok then return end

onedarkpro.setup {
  dark_theme = "onedark",
  options = {
    transparency = true
  }
}

vim.cmd("colorscheme onedarkpro")
--
-- vim.o.termguicolors = true
-- vim.api.nvim_command "colorscheme doubletrouble"
