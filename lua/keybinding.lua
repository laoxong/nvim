vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap

local opt = { noremap = true, silent = true }

-- visual模式下缩进代码
vim.keymap.set("v", "<", "<gv", opt)
vim.keymap.set("v", ">", ">gv", opt)

-- nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- Alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
-- Ctrl + h/l 左右切换TAB
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
