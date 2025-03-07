vim.api.nvim_create_autocmd({ "LspAttach" }, {
	-- group = "Hierarchy",
	desc = "Set up the :FunctionReferences user command",
	callback = function()
		local opts = {}
		require("hierarchy").setup(opts)
	end,
})
