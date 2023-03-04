--------------------------------------------------------------
--					 lua/core/keys.lua
--------------------------------------------------------------

local map = vim.api.nvim_set_keymap

-- keymap params:
-- 1) i =			mode 
-- 2) jk =			the sequence of keys to press
-- 3) command =		the cmd we want to execute
-- 4) options =		An optional table of options (e.g. silent, noremap...)


-- remap the key used to leave insert mode
map('i', 'jk', '', {})

