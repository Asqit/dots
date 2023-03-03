--> Init.lua 

-- Setting leaders
-- These keybindings need to be defined before the first '/'
-- is called, otherwise, it will default to '\'
vim.g.mapleader = ","
vim.g.localleader = "\\"


-- Importing modules
require("vars")		-- variables
require("opts")		-- options
require("keys")		-- keymaps
require("plug")		-- plugins

-- Plugins
require('nvim-tree').setup{}
require('lualine').setup{
	options = {
		theme = 'gruvbox'
	}
}
