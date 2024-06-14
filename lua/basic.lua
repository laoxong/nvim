-- UTF-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 缩进字符
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.bo.tabstop = 4
vim.o.shiftround = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = false
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
-- 显示行号
vim.wo.number = true
-- 使用相对行号
vim.wo.relativenumber = true
-- 右侧参考线
vim.wo.colorcolumn = "160"
-- 禁用 netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- 补全增强
vim.o.wildmenu = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 命令模式行高
vim.o.cmdheight = 1
-- 自动加载外部修改
vim.o.autoread = true
vim.bo.autoread = true

