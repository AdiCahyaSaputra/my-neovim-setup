local ok, cybuf = pcall(require, 'cybu')
if not ok then return end

cybuf.setup {
  style = {
    path = 'tail',
    path_abbreviation = "shortened",
    border = "single",
    padding = 2,
    hide_buffer_id = true
  }
}
