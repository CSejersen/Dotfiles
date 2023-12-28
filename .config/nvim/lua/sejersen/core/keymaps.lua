vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness 

-- general keymaps 
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>-", "<C-x>")

-- keeps seach terms in the middle of screen
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- move highligted text with J K 
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '>-2<CR>gv=gv")

-- centered line while scrolling
keymap.set("n","<C-d>","<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest remap ever
keymap.set("x","<leader>p","\"_dP")

-- leader c to change all instances of word under cursor
keymap.set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- plugin keymaps 

-- vim-maximizer 
keymap.set("n","<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n","<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<C-f>", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<C-g>", "<cmd>Telescope git_files<cr>") -- find files within current git repo, respects .gitignore
keymap.set("n", "<C-s>", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance

-- Undo tree
keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

-- Vimtex
keymap.set("n", "<leader>lc", ":VimtexCompile<CR>")

-- Zen-mode
keymap.set("n", "<leader>z", ":ZenMode<CR>")
