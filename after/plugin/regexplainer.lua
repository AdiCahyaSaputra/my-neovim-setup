local ok, regexplainer = pcall(require, 'regexplainer')
if not ok then return end

regexplainer.setup {
  auto = true,
  mappings = {
    toggle = 'gR'
  }
}
