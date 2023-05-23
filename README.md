# Simple Neovim Setup
Fully written in lua, aesthetic ui, fuzzy finder, lsp, formatter, speed motion and more...

![20230523_09h08m22s_grim](https://github.com/AdiCahyaSaputra/my-neovim-setup/assets/77385046/d97b7490-a520-4bb8-9910-9b1ba6c71bba)
![20230523_09h08m13s_grim](https://github.com/AdiCahyaSaputra/my-neovim-setup/assets/77385046/6ede4a30-cf95-46ab-be9f-c0b9195dda2b)
![20230523_09h08m44s_grim](https://github.com/AdiCahyaSaputra/my-neovim-setup/assets/77385046/154be054-d0f6-4bcc-94e0-ffbc5574c061)
![20230523_09h08m56s_grim](https://github.com/AdiCahyaSaputra/my-neovim-setup/assets/77385046/5e704b9a-a187-437a-9c80-ad667435dfe0)

### Plugin Manager
[lazy.nvim](https://github.com/folke/lazy.nvim)

Startup Time ~200

## Installation Guide

### window (don't forget to backup your config first)
```bash
$ git clone https://github.com/AdiCahyaSaputra/my-neovim-setup ~/AppData/Local/nvim 
```

### Windows Note's
For treesitter error, you may need to read [this](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)

1. Install Zig for compiler because mingw is 32bit
```bash
choco install zig
```
2. then uncomment this on `nvim/lua/config/treesitter.lua` file
```lua
require("nvim-treesitter.install").prefer_git = false
require'nvim-treesitter.install'.compilers = { 'zig' }
```

### MacOS or Linux (or wsl)
```bash
$ git clone https://github.com/AdiCahyaSaputra/my-neovim-setup ~/.config/nvim 
```

### Run nvim
```
$ nvim
```

## LSP 
for open Mason UI
```
:Mason
```
example for install tsserver and intelephense
```
:MasonInstall typescript-language-server intelephense
```
you don't need to setup the server manually because `lsp-zero` do this automatically

## Treesitter (syntax highlight) 
example for install ts and php syntax highlight
```
:TSInstall tsx ts php
```

## Theme
you can change the theme whatever you want. Edit file `./lua/adics/theme.lua` and paste your config here

## Keybinds General
```lua
vim.g.mapleader = " "

"<leader>w" -- Save file (normal mode)
"<leader>e" -- Toggle neotree (normal mode)
"<leader>o" -- Toggle neotree focus (normal mode)

"<A-j>" -- Scroll down (normal mode)
"<A-k>" -- Scroll up (normal mode)

"<A-l>" -- Switch vsplit window to right (normal mode)
"<A-h>" -- Switch vsplit window to left (normal mode)

"<A-Up>" -- Resize vsplit window to +3 (normal mode)
"<A-Down>" -- Switch vsplit window to -3 (normal mode)

"<A-t>" -- Toggle Term (normal, terminal mode)
"<space>;" -- Escape (terminal mode)
"<space>g" -- Lazygit (normal mode)
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
- [neosolarized](https://github.com/Tsuzat/NeoSolarized.nvim)
- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [toggle-term](https://github.com/akinsho/toggleterm.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-autotag.nvim](https://github.com/windwp/nvim-ts-autotag)
- [nvim-autopairs.nvim](https://github.com/windwp/nvim-autopairs)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [alpha.nvim](https://github.com/goolord/alpha-nvim)
- [treesitter-text-object](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [surround](https://github.com/kylechui/nvim-surround)
