return {
	"mfussenegger/nvim-dap",
	init = function()
		vim.keymap.set("n", "<leader>b", function()
			require("dap").toggle_breakpoint()
		end, { desc = "Debug Toggle Breakpoint" })

		vim.keymap.set("n", "<leader>B", function()
			require("dap").set_breakpoint()
		end, { desc = "Debug Set Breakpoint" })
	end,
}
