return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function()
		local ascii_art = [[]]

		ascii_art = string.rep("\n", 8) .. ascii_art .. "\n\n"

		local opts = {
			theme = "doom",
			shortcut_type = "number",
			hide = {
				"statusline",
			},
			config = {
				-- header = vim.split(ascii_art, "\n"),
				-- footer = function()
				-- 	local stats = require("lazy").stats()
				-- 	local sec = (math.floor(stats.startuptime + 0.5) / 1000)
				-- 	return { "Loaded " .. stats.loaded .. " of " .. stats.count .. " plugins in " .. sec .. " seconds." }
				-- end,
			},
		}

		return opts
	end,
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
}
