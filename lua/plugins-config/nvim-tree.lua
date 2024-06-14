local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	vim.notify("没有找到 nvim-tree")
	return
end

nvim_tree.setup({
  sort_by = "case_sensitive",
	-- 是否显示 git 状态
	git = {
		enable = true,
	},
	-- 过滤文件
	filters = {
		dotfiles = true, -- 过滤 dotfile
		custom = { "node_modules" }, -- 其他过滤目录
	},
  view = {
	-- 文件浏览器展示位置，左侧：left, 右侧：right
	side = "left",
	-- 行号是否显示
	number = false,
	relativenumber = false,
	signcolumn = "yes", -- 显示图标
	width = 30,
  },
  renderer = {
    group_empty = true,
  },
})

-- Auto Close
vim.api.nvim_create_autocmd("QuitPre", {
  callback = function()
    local tree_wins = {}
    local floating_wins = {}
    local wins = vim.api.nvim_list_wins()
    for _, w in ipairs(wins) do
      local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
      if bufname:match("NvimTree_") ~= nil then
        table.insert(tree_wins, w)
      end
      if vim.api.nvim_win_get_config(w).relative ~= '' then
        table.insert(floating_wins, w)
      end
    end
    if 1 == #wins - #floating_wins - #tree_wins then
      -- Should quit, so we close all invalid windows.
      for _, w in ipairs(tree_wins) do
        vim.api.nvim_win_close(w, true)
      end
    end
  end
})
