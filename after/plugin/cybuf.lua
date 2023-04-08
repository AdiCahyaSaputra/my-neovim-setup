local ok, cybuf = pcall(require, 'cybu')
if not ok then return end

cybuf.setup {
  style = {
    path_abbreviation = "shortened",
    border = "single",
    padding = 2
  }
}
