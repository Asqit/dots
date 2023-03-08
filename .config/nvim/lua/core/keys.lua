--------------------------------------------------------------
--					 lua/core/keys.lua
--------------------------------------------------------------

-- Setting custom mapleader (Custom keybindings)
vim.g.mapleader = ','
vim.g.localleader = '\\'

-- keymap.set(mode, key sequence, command, options)
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- code completion
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

-- use enter to select a snippet
map("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
