require("sejersen.plugins-setup")
require("sejersen.core.options")
require("sejersen.core.keymaps")
require("sejersen.core.colorscheme")
require("sejersen.plugins.comment")
require("sejersen.plugins.nvim-tree")
require("sejersen.plugins.lualine")
require("sejersen.plugins.telescope")
require("sejersen.plugins.lsp")
require("sejersen.plugins.autopairs")
require("sejersen.plugins.treesitter")
require("sejersen.plugins.gitsigns")

-- Vimtex setup
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1

-- Set the local leader key to ,
vim.g.maplocalleader = ","
