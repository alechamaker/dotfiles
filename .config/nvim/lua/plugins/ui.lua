return {
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		},
	},
	{ 
		"itchyny/lightline.vim"
	},
	{
		"akinsho/bufferline.nvim",
	},
	{
		"romgrk/barbar.nvim",
		setup = {

		}
	},
	{
		"yamatsum/nvim-cursorline" ,
		setup = {
			cursorline = {
				enable = true,
				timeout = 1000,
				number = false,
			},
			cursorword = {
				enable = true,
				min_length = 3,
				hl = { underline = true },
			}
		},
		config = function ()
			require('nvim-cursorline').setup()
		end
	},
	{
		'goolord/alpha-nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			'nvim-lua/plenary.nvim'
		},
		config = function ()
			require'alpha'.setup(require'alpha.themes.theta'.config)
		end
	},

}
