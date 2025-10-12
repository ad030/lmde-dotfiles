return {
	{
		"catppuccin/nvim",
		lazy = false,
		opts = {
			flavour = "mocha",
			transparent_background = true,
		},
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
			})
			vim.cmd.colorscheme([[catppuccin-mocha]])
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		opts = {
			theme = "wave",
			transparent = true,
		},
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000, -- make sure to load this before all the other start plugins

		opts = {
			style = "night",
			transparent = true,
			terminal_colors = true,
		},
	},
	{
		"sainnhe/gruvbox-material",
		lazy = true,
		-- config = function()
		-- 	-- vim.g.gruvbox_material_transparent_background = 1
		-- 	vim.cmd.colorscheme("gruvbox-material")
		-- end,
	},
}
