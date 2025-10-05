-- nvim-mini auto completion

return {
	"nvim-mini/mini.completion",
	dependencies = {
		"nvim-mini/mini.icons",
		"nvim-mini/mini.snippets",
	},
	version = "*",
	opts = {
		window = {
			info = {
				border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
			},
			signature = {
				border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
			},
		},
	},
}
