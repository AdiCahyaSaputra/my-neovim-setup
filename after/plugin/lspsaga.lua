local ok, lspsaga = pcall(require, 'lspsaga')
if not ok then return end

lspsaga.setup {
  ui = {
    border = "rounded"
  }
}
