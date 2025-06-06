return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("kanagawa")
	end,
	opts = {
		theme = "wave",
		-- transparent = true,
	},
}
