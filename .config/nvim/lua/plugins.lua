return {
  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",

  -- tmux & split window navigation
  "christoomey/vim-tmux-navigator",

  -- Maximizes and restores current window (mapped to )
  "szw/vim-maximizer",

  -- Essential plugins
  "tpope/vim-surround",              -- add, delete, change surroundings (it's awesome)

  -- undo tree
  "mbbill/undotree",

  -- auto closing
  "windwp/nvim-autopairs",                                       -- autoclose parens, brackets, quotes, etc...
  { "windwp/nvim-ts-autotag", dependencies = "nvim-treesitter" }, -- autoclose tags

  -- vimTex
  "lervag/vimtex",

  -- color tags on hex colors
  "ap/vim-css-color",

  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim",  opts = {} },

}
