-- local presets = require("markview.presets")
--[[
return {
	"OXY2DEV/markview.nvim",
	lazy = false,

	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},

	opts = {

		preview = {
			enable = true,

			modes = { "n", "no", "c" },
			hybrid_modes = { "n", "no", "c" },
			ignore_buftypes = { "nofile" },

			filetypes = { "markdown", "latex" },

			icon_provider = "devicons",
		},

		markdown = {
			-- headings = presets.headings.marker,
		},

		latex = {
			enable = true,

			blocks = {
				enable = true,
			},
			inlines = {
				enable = true,
			},
			parenthesis = {
				enable = true,
			},
			subscripts = {
				enable = true,
			},
			superscripts = {
				enable = true,
			},
			symbols = {
				enable = true,
			},
			escapes = {
				enable = true,
			},
			texts = {
				enable = true,
			},
			commands = {
				enable = true,
			},
		},
	},
}

]]
--
