# Simple Neovim Setup
Fully written in lua, aesthetic ui, fuzzy finder, lsp, formatter, speed motion and more...

![IMG_20230118_065535](https://user-images.githubusercontent.com/77385046/213455716-d1ee4cec-fd16-47b5-ba6d-a7da838a5668.jpg)
![IMG_20230118_065625](https://user-images.githubusercontent.com/77385046/213455963-a41be59f-cda2-4a4a-9060-ee1e3cf1f2e5.jpg)

## Plugin Manager
[lazy.nvim](https://github.com/folke/lazy.nvim)

## Keybinds General
```lua
vim.g.mapleader = " "

"<leader>w" -- Save file (normal mode)
"<leader>e" -- Toggle neotree (normal mode)
"<leader>o" -- Focus neotree (normal mode)

"<A-j>" -- Scroll down (normal mode)
"<A-k>" -- Scroll up (normal mode)

"<A-l>" -- Switch vsplit window to right (normal mode)
"<A-h>" -- Switch vsplit window to left (normal mode)

"<A-Up>" -- Resize vsplit window to +3 (normal mode)
"<A-Down>" -- Switch vsplit window to -3 (normal mode)
```

## Keybinds Buffer
```lua
"H" -- Prev Buffer (normal mode)
"L" -- Next Buffer (normal mode)
"C" -- Close Buffer (normal mode)

"<leader>al" -- Hop line (all mode)
"<leader>aw" -- Hop word (all mode)
"<leader>aa" -- Hop char (all mode)

"jk" -- Escape (insert mode)

"gd" -- Goto Definition (normal mode)
"K" -- Hover doc (normal mode)
"<leader>ca" -- Code action (normal mode)
"<leader>lf" -- lsp format (normal mode)
"<leader>dh" -- jum to prev diagnostic (normal mode)
"<leader>dl" -- jum to next diagnostic (normal mode)

"<cr>" -- confirm cmp (insert mode)
```

## Plugins
- [onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [github-nvim-theme.nvim](https://github.com/projekt0n/github-nvim-theme)
- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-ts-autotag.nvim](https://github.com/windwp/nvim-ts-autotag)
- [nvim-autopairs.nvim](https://github.com/windwp/nvim-autopairs)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [alpha.nvim](https://github.com/goolord/alpha-nvim)

## Windows Note's
For treesitter error, you may need to read [this](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)

1. Install Zig for compiler because mingw is 32bit
```bash
choco install zig
```
2. Add this to `./after/plugin/treesitter.lua`
```lua
require'nvim-treesitter.install'.compilers = { "zig" }
```
