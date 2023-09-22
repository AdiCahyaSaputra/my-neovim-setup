vim.g.mapleader = " "

local bind = vim.keymap.set

bind("n", "<leader>w", "<cmd>w<cr>")

bind("n", "<A-j>", "<C-d>zz")
bind("n", "<A-k>", "<C-u>zz")

bind("v", "<A-j>", "<C-d>")
bind("v", "<A-k>", "<C-u>")

bind("n", "<leader>e", function()
  local ft = vim.bo.filetype

  if ft == "alpha" then
    vim.cmd("bd")
  end

  if ft == "neo-tree" then
    vim.cmd("Neotree close")
  else
    vim.cmd("Neotree float")
  end
end)

bind("n", "<leader>o", function()
  local ft = vim.bo.filetype
  if ft == "alpha" then
    vim.cmd("bd")
  end
  vim.cmd("Exp")
end)

bind(
  "n",
  "<leader>ff",
  '<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({ previewer = false, prompt_prefix = " O ", hidden = true, file_ignore_patterns = {".git", "vendor", "node_modules"} }))<cr>',
  { noremap = true, silent = true }
)

bind("n", "<leader>fb", "<cmd>Telescope git_branches<cr>")
bind("n", "<leader>fs", "<cmd>Telescope git_status<cr>")

bind("s", "<Tab>", "<cmd>lua require'luasnip'.jump(1)<cr>")
bind("s", "<S-Tab>", "<cmd>lua require'luasnip'.jump(-1)<cr>")

bind("n", "ss", ":split<Return><C-w>w")
bind("n", "sv", ":vsplit<Return><C-w>w")

bind("n", "<C-l>", "<C-w>l")
bind("n", "<C-h>", "<C-w>h")
bind("n", "<C-j>", "<C-w>j")
bind("n", "<C-k>", "<C-w>k")

bind("n", "<C-left>", "<C-w><")
bind("n", "<C-right>", "<C-w>>")
bind("n", "<C-up>", "<C-w>+")
bind("n", "<C-down>", "<C-w>-")

bind("n", "H", "<cmd>BufferLineCyclePrev<cr>")
bind("n", "L", "<cmd>BufferLineCycleNext<cr>")
bind("n", "C", "<cmd>bd<cr>")

bind("", "f", "<cmd>HopChar1CurrentLine<cr>", { noremap = true, silent = true })
bind("", "F", "<cmd>HopChar2CurrentLine<cr>", { noremap = true, silent = true })
bind("", "<leader>al", "<cmd>HopChar2<cr>", { noremap = true, silent = true })
bind("", "<leader>aw", "<cmd>HopWord<cr>", { noremap = true, silent = true })
bind("", "<leader>aa", "<cmd>HopChar1<cr>", { noremap = true, silent = true })

bind("i", "jk", "<Esc>")

function _G.set_toggleterm_keybind()
  local opts = { buffer = 0 }
  bind("t", "<space>;", [[<C-\><C-n>]], opts)
  bind("t", "<A-t>", "<cmd>ToggleTerm<cr>", opts)
end

vim.cmd("autocmd! TermOpen term://*toggleterm* lua set_toggleterm_keybind()")

bind("n", "<A-t>", "<cmd>ToggleTerm direction=float<cr>", { noremap = true, silent = true })
