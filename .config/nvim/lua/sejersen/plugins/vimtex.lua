
local status, vimtex = pcall(require, "vimtex")
if not status then
  return
end
vim.g.vimtex_view_method = 'skim'
vimtex.setup()



