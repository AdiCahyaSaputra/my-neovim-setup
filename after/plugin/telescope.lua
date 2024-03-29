local ok, builtin = pcall(require, "telescope.builtin")
if not ok then
  return
end

local telescope = require("telescope")

telescope.setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown(),
    },
    -- file_browser = {
    --   -- theme = "ivy",
    --   hijack_netrw = true,
    -- },
  },
  -- defaults = {
  --   border = {},
  --   borderchars = { "─", "│", "─", "│", "[]", "[]", "[]", "[]" },
  -- },
})

telescope.load_extension("ui-select")
-- telescope.load_extension("frecency")
