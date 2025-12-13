return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	config = function()
		vim.keymap.set("n", "<leader>juc", function()
			require("jdtls").test_class()
		end, { desc = "[JU]nit Test [C]lass" })

		vim.keymap.set("n", "<leader>jum", function()
			require("jdtls").test_nearest_method()
		end, { desc = "[JU]nit Test Nearest [M]ethod" })
	end,
}
