local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "kyazdani42/nvim-tree.lua", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "CRAG666/code_runner.nvim", config = true },
    { 'Exafunction/codeium.vim', event = 'BufEnter' },
})

