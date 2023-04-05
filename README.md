# Simple Neovim Setup
Fully written in lua, aesthetic ui, fuzzy finder, lsp, formatter, speed motion and more...

![Ubuntu 15_03_2023 18_40_13](https://user-images.githubusercontent.com/77385046/225299024-95c29d1d-2d0c-46c8-9bae-ae2f1a0f3e0b.png)
![Ubuntu 15_03_2023 18_40_38](https://user-images.githubusercontent.com/77385046/225299090-fa4361ec-5541-4dca-9d07-59d4eddb1513.png)
![Ubuntu 15_03_2023 18_40_45](https://user-images.githubusercontent.com/77385046/225299148-4bd55616-63d5-4ff1-864f-53deb004874a.png)
![Ubuntu 15_03_2023 18_40_51](https://user-images.githubusercontent.com/77385046/225299149-68665491-f673-4099-8728-74799a95dda4.png)

## Plugin Manager
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
"<leader>o" -- Focus neotree (normal mode)

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
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [alpha.nvim](https://github.com/goolord/alpha-nvim)
