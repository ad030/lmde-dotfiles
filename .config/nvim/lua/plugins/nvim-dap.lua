return {
	{ "mfussenegger/nvim-dap" },
	opts = {
		vim.keymap.set(
			"n",
			"<leader>dbb",
			":lua require('dap').toggle_breakpoint()<CR",
			{ desc = "Debug Toggle Breakpoint" }
		),
	},
}
