local ok, lspsaga = pcall(require, 'lspsaga')
if not ok then return end

lspsaga.setup {
  ui = {
    border = "rounded",
    expand = '',
    collapse = '',
    preview = '] ',
    code_action = '! ',
    diagnostic = '; ',
    incoming = ' ',
    outgoing = ' ',
    colors = {
      normal_bg = "",
      title_bg = ""
    }
  }
}
