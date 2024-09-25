return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	config = function()
		vim.keymap.set("n", "<leader>jdf", "<CMD>lua require('jdtls').test_class()<CR>", { desc = "Java Test Class" })
		vim.keymap.set(
			"n",
			"<leader>jdn",
			"<CMD>lua require('jdtls').test_nearest_method()<CR>",
			{ desc = "Java Test Nearest Method" }
		)
	end,
}
