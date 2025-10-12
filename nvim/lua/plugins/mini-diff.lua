-- nvim-mini git diff module

return {
	"nvim-mini/mini.diff",
	version = "*",
	opts = {
		view = {
			signs = { add = "+", change = "~", delete = "_" },
		},
	},
}
