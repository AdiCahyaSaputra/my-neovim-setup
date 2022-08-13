-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local ok, lualine = pcall(require, 'lualine')
if not ok then return end

-- Color table for highlights
-- stylua: ignore
local colors = {
	bg       = '#202328',
	fg       = '#bbc2cf',
	yellow   = '#ECBE7B',
	cyan     = '#008080',
	darkblue = '#081633',
	green    = '#98be65',
	orange   = '#FF8800',
	violet   = '#a9a1e1',
	magenta  = '#c678dd',
	blue     = '#51afef',
	red      = '#ec5f67',
}

-- Config
local config = {
	options = {
		-- Disable sections and component separators
		component_separators = '',
		section_separators = '',
		theme = "tokyonight"
	},
	sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		-- These will be filled later
		lualine_c = {},
		lualine_x = {},
	},
	inactive_sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
	table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
	table.insert(config.sections.lualine_x, component)
end

ins_left {
	function()
		return '▊'
	end,
	color = function()
		-- auto change color according to neovims mode
		local mode_color = {
			i = colors.magenta,
			v = colors.red,
			V = colors.red,
			s = colors.orange,
			S = colors.orange,
			R = colors.violet,
			Rv = colors.violet,
			r = colors.cyan,
			rm = colors.cyan,
		}
		return { fg = mode_color[vim.fn.mode()] }
	end,
	padding = { left = 0, right = 1 }, -- We don't need space before this
}

ins_left {
	-- mode component
	function()
		return ''
	end,
	color = { fg = colors.red, gui = 'bold' }
}

ins_left {
	'diagnostics',
	sources = { 'nvim_lsp' },
	symbols = { error = ' ', warn = ' ', info = ' ' },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
	function()
		return '%='
	end,
}


ins_right {
	'filetype',
	fmt = string.lower,
	icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
	color = { fg = colors.blue, gui = 'bold' },
}

ins_right {
	'branch',
	icon = '',
	color = { fg = colors.yellow, gui = 'bold' },
}

ins_right {
	function()
		return ''
	end,
	padding = { left = 1 },
}

-- Now don't forget to initialize lualine
lualine.setup(config)
