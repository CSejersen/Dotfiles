-- auto install packer if not installed


local plugins ={

  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  --
  -- colorschemes
  { "catppuccin/nvim", name = "catppuccin" },
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation

  "szw/vim-maximizer", -- maximizes and restores current window

  -- essential plugins
  "tpope/vim-surround", -- add, delete, change surroundings (it's awesome)
  "inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)

  -- commenting with gc
  "numToStr/Comment.nvim",

  -- nice icons icons
  "nvim-tree/nvim-web-devicons",

  -- file explorer
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {{ 'nvim-tree/nvim-web-devicons'}} -- optional
  },

  {
    "folke/trouble.nvim",
    dependencies = {{'nvim-tree/nvim-web-devicons' } }
  },

  -- status line
  "nvim-lualine/lualine.nvim",

  -- fuzzy finding with telescope
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },

   {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      --{'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      --{
        "L3MON4D3/LuaSnip",
        -- follow latest release.
      --  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
       -- build = "make install_jsregexp"
     -- },
      {'rafamadriz/friendly-snippets'},
    }
  },

  -- undo tree
  "mbbill/undotree",

  {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  },

  -- auto closing
  { "windwp/nvim-ts-autotag", after = "nvim-treesitter" }, -- autoclose tags

  -- vimTex
  "lervag/vimtex",

  -- color tags on hex colors
  "ap/vim-css-color",

  -- git integration
  "lewis6991/gitsigns.nvim", -- show line modifications on left hand side
  "tpope/vim-fugitive", -- git commands within nvim with :G

  -- note taking
  "vimwiki/vimwiki",

}

local opts = {}

require("lazy").setup(plugins, opts)
