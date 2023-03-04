--------------------------------------------------------------
--					 Main init.lua
--------------------------------------------------------------


-- Setting leaders
-- These keybindings need to be defined before the first '/'
-- is called, otherwise, it will default to '\'
vim.g.mapleader = ','
vim.g.localleader = '\\'


--> Importing modules
require('core.vars')			-- variables
require('core.opts')			-- options
require('core.keys')			-- keymaps
require('core.plug')			-- plugins
require("core.plugin_config")	-- plguin configurations



-- Config for code completion was done by
-- https://www.youtube.com/watch?v=h4g0m0Iwmys&list=PLsz00TDipIffxsNXSkskknolKShdbcALR&index=3
