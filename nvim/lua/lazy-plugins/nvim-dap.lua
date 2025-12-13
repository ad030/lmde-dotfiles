return {
	"mfussenegger/nvim-dap",
	init = function()
		vim.keymap.set("n", "<leader>b", function()
			require("dap").toggle_breakpoint()
		end, { desc = "Debug Toggle Breakpoint" })

		vim.keymap.set("n", "<leader>B", function()
			require("dap").set_breakpoint()
		end, { desc = "Debug Set Breakpoint" })

		vim.keymap.set("n", "<F8>", function()
			require("dap").continue()
		end, { desc = "Debug Enter/Exit" })

		vim.keymap.set("n", "<F5>", function()
			require("dap").step_into()
		end, { desc = "Debug Step Into" })

		vim.keymap.set("n", "<F6>", function()
			require("dap").step_over()
		end, { desc = "Debug Step Over" })

		vim.keymap.set("n", "<F7>", function()
			require("dap").step_out()
		end, { desc = "Debug Step Out/Return" })
	end,
}
