return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("kanagawa")
	end,
	opts = function()
		local opts = {
			theme = "wave",
		}
		return opts
	end,
}
