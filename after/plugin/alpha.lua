-- local custom_header = {
-- 	"",
-- 	" █████  ██████  ██  ██████ ███████ ",
-- 	"██   ██ ██   ██ ██ ██      ██      ",
-- 	"███████ ██   ██ ██ ██      ███████ ",
-- 	"██   ██ ██   ██ ██ ██           ██ ",
-- 	"██   ██ ██████  ██  ██████ ███████ ",
-- 	"",
-- }

local custom_header = {
  "",
  "███╗   ██╗ ██████╗  ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗     ███╗   ███╗██╗   ██╗██╗     ██╗   ██╗",
  "████╗  ██║██╔════╝ ██╔═══██╗██╔══██╗██║████╗  ██║██╔════╝     ████╗ ████║██║   ██║██║     ██║   ██║",
  "██╔██╗ ██║██║  ███╗██║   ██║██║  ██║██║██╔██╗ ██║██║  ███╗    ██╔████╔██║██║   ██║██║     ██║   ██║",
  "██║╚██╗██║██║   ██║██║   ██║██║  ██║██║██║╚██╗██║██║   ██║    ██║╚██╔╝██║██║   ██║██║     ██║   ██║",
  "██║ ╚████║╚██████╔╝╚██████╔╝██████╔╝██║██║ ╚████║╚██████╔╝    ██║ ╚═╝ ██║╚██████╔╝███████╗╚██████╔╝",
  "╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝     ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝ ",
  "",
}

local ok, alpha = pcall(require, "alpha")
if not ok then
  return
end

local startify = require("alpha.themes.startify")

local emotes = { "😋", "😒", "😂", "😎", "🙌", "😜", "🔥", "💕" }

startify.section.header.val = custom_header
startify.section.footer.val = {
  {
    type = "text",
    val = {
      [[]],
      [[Mwehehe 😋]],
      [[]],
    },
  },
}
-- db.section.buttons.val = {
-- 	db.button("Quit?", "I'm Tired", ":wqa<cr>"),
-- 	db.button(
-- 		"SPC ff ]",
-- 		"[ Find File",
-- 		'<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({ previewer = false, prompt_prefix = " O ",selection_caret = " » ", entry_prefix = "  ",  hidden = true, file_ignore_patterns = {".git", "vendor", "node_modules"} }))<cr>'
-- 	),
-- 	db.button(
-- 		"SPC fs ]",
-- 		"[ Git Status",
-- 		'<cmd>lua require"telescope.builtin".git_status(require("telescope.themes").get_dropdown({ prompt_prefix = " O ",selection_caret = " » ", entry_prefix = "  ",  hidden = true, file_ignore_patterns = {".git", "vendor", "node_modules"} }))<cr>'
-- 	),
-- 	db.button(
-- 		"SPC fb ]",
-- 		"[ Git Branch",
-- 		'<cmd>lua require"telescope.builtin".git_branches(require("telescope.themes").get_dropdown({ prompt_prefix = " O ",selection_caret = " » ", entry_prefix = "  ",  hidden = true, file_ignore_patterns = {".git", "vendor", "node_modules"} }))<cr>'
-- 	),
-- }

alpha.setup(startify.config)
