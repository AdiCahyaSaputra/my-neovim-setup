local ok, neotree = pcall(require, 'neo-tree')
if not ok then return end

neotree.setup {
  enable_diagnostics = false,
  default_component_configs = {
    icon = {
      folder_empty = '-'
    },
    git_status = {
      symbols = {
        deleted = "!",
        renamed = "*",
        untracked = "?",
        ignored = "",
        unstaged = "",
        staged = "",
        conflict = "-"
      }
    }
  },
  window = {
    width = 30
  }
}
