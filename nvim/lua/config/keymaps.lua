local g = vim.g
g.mapleader = " "
g.maplocalleader = " "

local keymap = vim.keymap
-- esc
keymap.set("i", "jk", "<esc>", { desc = "[vim] Esc", silent = true, })
-- quit
keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "[vim] Quit", silent = true, })
-- save
keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "[vim] Save", silent = true })
-- vsplit
keymap.set("n", "<leader>h", "<c-w>s", { desc = "[vim] SplitVertial", silent = true, })
-- split
keymap.set("n", "<leader>v", "<c-w>v", { desc = "[vim] SplitHorizontal", silent = true, })
-- view move up and down
keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "[vim] ViewMoveUp", silent = true, })
keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "[vim] ViewMoveDown", silent = true, })
