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
        added = "A",
        deleted = "D",
        modified = "M",
        renamed = "R",
        untracked = "U",
        ignored = "I",
        unstaged = "",
        staged = "",
        conflict = ""
      }
    }
  },
  window = {
    width = 30
  }
}
