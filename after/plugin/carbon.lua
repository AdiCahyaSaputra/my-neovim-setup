local ok, carbon = pcall(require, 'carbon-now')
if not ok then return end

carbon.setup()
