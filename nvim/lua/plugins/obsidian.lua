return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	init = function()
		vim.keymap.set("n", "<leader>Ot", "<cmd>ObsidianTemplate<cr>", { desc = "Obsidian Template" })
		vim.keymap.set("n", "<leader>Oo", "<cmd>ObsidianOpen<cr>", { desc = "Obsidian Open" })
		vim.keymap.set("n", "<leader>Od", "<cmd>ObsidianToday<cr>", { desc = "Obsidian Daily Note" })
	end,

	opts = {
		workspaces = {
			{
				name = "school",
				path = "~/vaults/school-notes/",
			},
			{
				name = "personal",
				path = "~/vaults/personal-notes/",
			},
			{
				name = "no-vault",
				path = function() assert(vim.fn.getcwd()) end,
				overrides = {
					notes_subdir = vim.NIL,
					new_notes_location = "current_dir",
					templates = {
						folder = vim.NIL,
					},
					disable_frontmatter = true,
					mappings = {},
				},
			},
		},

		notes_subdir = "000_notes",
		new_notes_location = "notes_subdir",

		daily_notes = {
			folder = "000_notes/010_daily_notes",
			date_format = "%Y-%m-%d",
			default_tags = { "daily" },
			template = "800_templates/daily_note.md",
		},

		completion = {
			nvim_cmp = false,
			min_chars = 2,
		},

		mappings = {
			--[[
			["<cr>"] = {
				action = function()
					return require("obsidian").util.smart_action()
				end,
				opts = { buffer = true, expr = true },
			},
			]]

			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
		},

		--[[
		note_id_func = function(title)
			local suffix = ""
			if title ~= nil then
				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				for _ = 1, 4 do
					suffix = suffix .. string.char(math.random(65, 90))
				end
			end

			return tostring(os.time()) .. "-" .. suffix
		end,
		]]
		--

		wiki_link_func = "prepend_note_path",

		markdown_link_func = function(opts)
			return require("obsidian.util").wiki_link_id_prefix(opts)
		end,

		templates = {
			folder = "800_templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			substitutions = {},
		},

		attachments = {
			img_folder = "900_files",

			img_name_func = function()
				return string.format("%s-", os.time())
			end,

			img_text_func = function(client, path)
				path = client:vault_relative_path(path) or path
				return string.format("![%s](%s)", path.name, path)
			end,
		},

		preferred_link_style = "wiki",

		picker = {
			name = "telescope.nvim",
			note_mappings = {
				new = "<C-x>",
				insert_link = "<C-l>",
			},
			tag_mappings = {
				tag_note = "<C-x>",
				insert_tag = "<C-l>",
			},
		},

		sort_by = "modified",
		sort_reversed = true,

		search_max_lines = 1000,

		open_notes_in = "current",

		callbacks = {
			post_setup = function(client) end,
			enter_note = function(client, note) end,
			leave_note = function(client, note) end,
			pre_write_note = function(client, note) end,
			post_set_workplace = function(client, workspace) end,
		},

		ui = {
			enable = true,
			update_debounce = 200,
			max_file_length = 5000,

			checkboxes = {
				[" "] = { char = "☐" },
				["x"] = { char = "✔", hl_group = "ObsidianDone" },
				[">"] = { char = "", hl_group = "ObsidianRightArrow" },
				["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
				["!"] = { char = "", hl_group = "ObsidianImportant" },
			},
			bullets = { char = "•", hl_group = "ObsidianBullet" },
			external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
			-- Replace the above with this if you don't have a patched font:
			-- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
			reference_text = { hl_group = "ObsidianRefText" },
			highlight_text = { hl_group = "ObsidianHighlightText" },
			tags = { hl_group = "ObsidianTag" },
			block_ids = { hl_group = "ObsidianBlockID" },
			hl_groups = {
				-- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
				ObsidianTodo = { bold = true, fg = "#f78c6c" },
				ObsidianDone = { bold = true, fg = "#89ddff" },
				ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
				ObsidianTilde = { bold = true, fg = "#ff5370" },
				ObsidianImportant = { bold = true, fg = "#d73128" },
				ObsidianBullet = { bold = true, fg = "#89ddff" },
				ObsidianRefText = { underline = true, fg = "#c792ea" },
				ObsidianExtLinkIcon = { fg = "#c792ea" },
				ObsidianTag = { italic = true, fg = "#89ddff" },
				ObsidianBlockID = { italic = true, fg = "#89ddff" },
				ObsidianHighlightText = { bg = "#75662e" },
			},
		},
	},
}
