return {
	"mfussenegger/nvim-dap",
	init = function()
		vim.keymap.set(
			"n",
			"<leader>dbb",
			":lua require('dap').toggle_breakpoint()<CR>",
			{ desc = "Debug Toggle Breakpoint" }
		)
	end,
}
