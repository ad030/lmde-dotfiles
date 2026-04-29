vim.pack.add({
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	"https://github.com/epwalsh/obsidian.nvim",
})

vim.opt_local.conceallevel = 1

require("render-markdown").setup({})

local obsidian = require("obsidian")

obsidian.setup({
	workspaces = {
		{
			name = "personal",
			path = "~/vaults/personal-notes",
		},
		{
			name = "school",
			path = "~/vaults/school-notes",
		},
	},

	notes_subdir = "000_notes",
	new_notes_location = "notes_subdir",

	daily_notes = {
		folder = "000_notes/030_daily",
		date_format = "%Y-%m-%d",
		default_tags = { "daily" },
	},

	templates = {
		folder = "800_templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
	},

	attachments = {
		img_folder = "900_assets",
	},

	mappings = {
		-- [G]oto [F]ile in obsidian vault
		["gf"] = {
			action = function()
				return obsidian.util.gf_passthrough()
			end,
			opts = { noremap = false, expr = true, buffer = true },
		},
		-- Toggle check-boxes.
		["<leader>ch"] = {
			action = function()
				return obsidian.util.toggle_checkbox()
			end,
			opts = { buffer = true },
		},
		-- smart action; toggle checkbox or follow link
		["<cr>"] = {
			action = function()
				return obsidian.util.smart_action()
			end,
			opts = { buffer = true, expr = true },
		},
		-- open daily note
		["<leader>Od"] = {
			action = function()
				return obsidian.client.today()
			end,
			opts = { buffer = true, expr = true, desc = "Open [D]aily Note" },
		},
		-- open new note
		["<leader>On"] = {
			action = function()
				return obsidian.client.today()
			end,
			opts = { buffer = true, expr = true, desc = "Open [D]aily Note" },
		},
	},

	completion = {
		nvim_cmp = false,
	},

	picker = {
		name = "mini.pick",
	},
})
