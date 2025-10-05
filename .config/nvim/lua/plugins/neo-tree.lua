return {
	"nvim-neo-tree/neo-tree.nvim",

	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	keys = {
		{
			"<leader>rr",
			function()
				vim.api.nvim_exec2("Neotree toggle", {})
			end,
			desc = "Buffers (root dir)",
		},
	},

	opts = {
		window = {
			mappings = {
				["e"] = function()
					vim.api.nvim_exec2("Neotree focus filesystem left", {})
				end,
				["b"] = function()
					vim.api.nvim_exec2("Neotree focus filesystem left", {})
				end,
				["g"] = function()
					vim.api.nvim_exec2("Neotree focus filesystem left", {})
				end,
			},
		},
	},
}
