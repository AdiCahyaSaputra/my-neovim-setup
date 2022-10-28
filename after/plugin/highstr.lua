local ok, highstr = pcall(require, 'high-str')
if not ok then return end

highstr.setup {
  saving_path = './tmp/highstr/'
}
