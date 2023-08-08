vim.g.mapleader = " "

local keymap = vim.keymap

----------------------------------------------------------------------------------------------------
-- General Keymaps
----------------------------------------------------------------------------------------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- move to beginning of line
keymap.set("i", "<C-b>", "<ESC>^i")

-- move to end of line
keymap.set("i", "<C-e>", "<End>")

-- save file
keymap.set("n", "<leader>s", "<cmd>w<CR>")
keymap.set("n", "<C-s>", "<cmd>w<CR>")

-- clear search highlights
keymap.set("n", "<ESC>", "<cmd>nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
keymap.set("n", "s", '"_s')

-- delete selected text without copying into register
keymap.set("v", "d", '"_d')
keymap.set("v", "D", '"_D')

keymap.set("v", "s", '"_s')
keymap.set("v", "S", '"_S')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- open new tab
-- keymap.set("n", "<TAB>", "<cmd>tabn<CR>") --  go to next tab
-- keymap.set("n", "<S-TAB>", "<cmd>tabp<CR>") --  go to previous tab

----------------------------------------------------------------------------------------------------
-- Plugin Keybinds
----------------------------------------------------------------------------------------------------

-- Bufferline
keymap.set("n", "<leader>tn", "<cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<leader>tp", "<cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>tx", "<cmd>NvimTreeClose<CR><cmd>bdelete<CR>") -- close current buffer

-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<C-e>", "<cmd>NvimTreeFocus<CR>") -- focus file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- list available help tags
