-- Basic settings
require("basic")

-- Load plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://gitee.com/zhengqijun/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = require("custom_keys").leader
vim.g.maplocalleader = "\\"

require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{ import = "languages" },
		{ import = "my_plugins" },
	},
	ui = {
		border = "rounded",
	},
	change_detection = {
		enabled = true,
		notify = false, -- get a notification when changes are found
	},
})

-- Final settings
require("core")
pcall(require, "custom")


--local options1 = {
--    clipboard = 'unnamed', --同步系统剪贴板
--    
--}
-- 使用系统剪切板作为默认寄存器
vim.opt.clipboard = "unnamed"
-- neovide 设置 
vim.g.neovide_scale_factor = 0.8
vim.g.neovide_background_alpha = 0.5


