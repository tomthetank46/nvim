vim.g.mapleader = " "

local keymap = vim.keymap -- concise

-- general

keymap.set("i", "jj", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

keymap.set("n", "<leader>ls", ":ls<CR>") -- show list of buffers
keymap.set("n", "<leader>b", ":b ") -- switch to buffers
keymap.set("n", "<leader>bn", ":bn<CR>") -- next buffer
keymap.set("n", "<leader>bp", ":bp<CR>") -- previous buffer
keymap.set("n", "<leader>bd<CR>", ":bd<CR>") -- previous buffer
keymap.set("n", "<leader>bd", ":bd ") -- previous buffer

keymap.set("n", "M", "m") -- set mark
keymap.set("n", "m", "`") -- go to mark

-- Duplicate a line and comment out the first line
keymap.set("n", "yc", "yygccp")

-- terminal
keymap.set("t", "jj", "<C-\\><C-N>")

-- plugin keymaps
--
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>E", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
