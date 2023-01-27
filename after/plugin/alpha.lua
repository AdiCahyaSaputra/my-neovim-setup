local custom_header = {
  '',
  ' █████  ██████  ██  ██████ ███████ ',
  '██   ██ ██   ██ ██ ██      ██      ',
  '███████ ██   ██ ██ ██      ███████ ',
  '██   ██ ██   ██ ██ ██           ██ ',
  '██   ██ ██████  ██  ██████ ███████ ',
  '',
}

local ok, alpha = pcall(require, 'alpha')
if not ok then return end

local db = require'alpha.themes.dashboard'

db.section.header.val = custom_header
db.section.buttons.val = {
  db.button("Quit?", "Eyo Bro Come Look At This", ":wqa<cr>"),
  db.button("SPC ff ]", "[ Find File", ":Telescope find_files<cr>"),
  db.button("SPC fs ]", "[ Git Status", ":Telescope git_status<cr>"),
  db.button("SPC fb ]", "[ Git Branch", ":Telescope git_branches<cr>"),
}

alpha.setup(db.config)

