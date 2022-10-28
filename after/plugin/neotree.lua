local ok, neotree = pcall(require, 'neo-tree')
if not ok then return end

neotree.setup {
  default_component_configs = {
    icon = {
      folder_empty = '-'
    }
  }
}
