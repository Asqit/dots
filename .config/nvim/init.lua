--> Init.lua 

-- Setting leaders
-- These keybindings need to be defined before the first '/'
-- is called, otherwise, it will default to '\'
vim.g.mapleader = ","
vim.g.localleader = "\\"


-- Importing modules
require("plug")		-- plugins
require("vars")		-- variables
require("opts")		-- options
require("keys")		-- keymaps

-- Plugins
require('nvim-tree').setup{}

require('lualine').setup{
	options = {
		theme = 'gruvbox'
	}
}

require('mason').setup{}

require('mason-lspconfig').setup{}

require("rust-tools").setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
