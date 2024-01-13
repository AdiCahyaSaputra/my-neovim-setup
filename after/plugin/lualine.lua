local ok, lualine = pcall(require, "lualine")
if not ok then
	return
end

-- local colors = {
--   bg = "#202328",
--   fg = "#bbc2cf",
--   yellow = "#ECBE7B",
--   cyan = "#008080",
--   darkblue = "#081633",
--   green = "#98be65",
--   orange = "#FF8800",
--   violet = "#a9a1e1",
--   magenta = "#c678dd",
--   blue = "#51afef",
--   red = "#ec5f67",
-- }
--
-- local config = {
--   options = {
--     -- Disable sections and component separators
--     -- theme = "onedark_dark",
--     component_separators = { left = "»", right = "«" },
--     section_separators = { left = "", right = "" },
--     disabled_filetypes = { "netrw", "carbon.explorer" },
--   },
--   sections = {
--     -- these are to remove the defaults
--     lualine_a = {},
--     lualine_b = {},
--     lualine_y = {},
--     lualine_z = {},
--     -- These will be filled later
--     lualine_c = {},
--     lualine_x = {},
--   },
--   inactive_sections = {
--     -- these are to remove the defaults
--     lualine_a = {},
--     lualine_b = {},
--     lualine_y = {},
--     lualine_z = {},
--     lualine_c = {},
--     lualine_x = {},
--   },
-- }
--
-- local function ins_left(component)
--   table.insert(config.sections.lualine_c, component)
-- end
--
-- local function ins_right(component)
--   table.insert(config.sections.lualine_x, component)
-- end
--
-- ins_left({
--   "filename",
--   path = 1,
--   color = function()
--     -- auto change color according to neovims mode
--     local mode_color_fg = {
--       n = colors.blue,
--       i = colors.magenta,
--       v = colors.red,
--       V = colors.red,
--       s = colors.orange,
--       S = colors.orange,
--       R = colors.violet,
--       Rv = colors.violet,
--       r = colors.cyan,
--       rm = colors.cyan,
--       c = colors.fg,
--     }
--
--     return { bg = mode_color_fg[vim.fn.mode()], gui = "bold", fg = colors.bg }
--   end,
--   padding = { left = 1, right = 1 }, -- We don't need space before this
--   separator = "",
-- })
--
-- ins_left({
--   -- Lsp server name .
--   function()
--     local msg = "lsp"
--     local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
--     local clients = vim.lsp.get_active_clients()
--     if next(clients) == nil then
--       return msg
--     end
--     for _, client in ipairs(clients) do
--       local filetypes = client.config.filetypes
--       if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
--         return client.name
--       end
--     end
--     return msg
--   end,
--   icon = "",
--   color = { fg = "#ffffff", gui = "bold" },
--   separator = "",
-- })
--
-- ins_left({
--   function()
--     return "%="
--   end,
--   separator = "",
-- })
--
-- ins_left({
--   "diagnostics",
--   sources = { "nvim_lsp" },
--   symbols = { error = " ", warn = " ", info = " " },
--   separator = "",
-- })
--
-- ins_right({
--   "filetype",
--   fmt = string.lower,
--   icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
--   color = { fg = colors.blue, gui = "bold" },
--   separator = "",
-- })
--
-- ins_right({
--   "branch",
--   icon = "",
--   color = { fg = colors.yellow, gui = "bold" },
--   separator = "",
-- })

-- local colors = require("solarized-osaka.colors").setup({ transform = true })
-- local config = require("solarized-osaka.config").options
--
-- local solarized_osaka = {
-- 	normal = {
-- 		a = { bg = colors.blue, fg = colors.black },
-- 		b = { bg = colors.bg_statusline, fg = colors.fg },
-- 		c = { bg = colors.bg, fg = colors.fg },
-- 	},
-- 	insert = {
-- 		a = { bg = colors.green, fg = colors.black },
-- 	},
-- 	command = {
-- 		a = { bg = colors.yellow, fg = colors.black },
-- 	},
-- 	visual = {
-- 		a = { bg = colors.magenta, fg = colors.black },
-- 	},
-- 	replace = {
-- 		a = { bg = colors.red, fg = colors.black },
-- 	},
-- 	terminal = {
-- 		a = { bg = colors.green, fg = colors.black },
-- 	},
-- 	inactive = {
-- 		a = { bg = colors.bg_statusline, fg = colors.blue },
-- 		b = { bg = colors.bg_statusline, fg = colors.fg, gui = "bold" },
-- 		c = { bg = colors.bg_statusline, fg = colors.fg },
-- 	},
-- }
--
-- if config.lualine_bold then
-- 	for _, mode in pairs(solarized_osaka) do
-- 		mode.a.gui = "bold"
-- 	end
-- end

lualine.setup({
	options = {
		-- theme = solarized_osaka,
		-- section_separators = { left = "", right = "" },
		-- component_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = {
			"mode",
		},
		lualine_b = {
			{
				"filename",
				path = 1,
			},
		},
		lualine_y = {
			{
				"branch",
				icon = "",
			},
		},
		lualine_z = {
			{
				-- Lsp server name .
				function()
					local msg = "lsp"
					local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
					local clients = vim.lsp.get_active_clients()
					if next(clients) == nil then
						return msg
					end
					for _, client in ipairs(clients) do
						local filetypes = client.config.filetypes
						if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
							return client.name
						end
					end
					return msg
				end,
				icon = "",
			},
		},
		lualine_c = {
			{
				"diagnostics",
				sources = { "nvim_lsp" },
				symbols = { error = " ", warn = " ", info = " " },
				separator = "",
			},
		},
		lualine_x = { "filetype" },
	},
})
