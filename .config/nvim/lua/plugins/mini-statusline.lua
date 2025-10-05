-- nvim-mini statusline

return {
	"nvim-mini/mini.statusline",
	dependencies = {
		"nvim-mini/mini.icons",
	},
	opts = {
		use_icons = vim.g.have_nerd_font,
		section_location = function()
			return "%2l:%-2v"
		end,
	},
}
