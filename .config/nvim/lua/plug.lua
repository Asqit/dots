--> plug.lua


return require("packer").startup(function(use)

	-- File tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
	}


	-- Nice looking status bar
	use {
		'nvim-lualine/lualine.nvim',
		 requires = { 
			 'kyazdani42/nvim-web-devicons', 
			 opt = true 
		 }
	 }


	-- Gruvbox is a retro lookin' theme
	use { "ellisonleao/gruvbox.nvim" }


end)
