vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function(opts)
		vim.opt.conceallevel = 1
		vim.opt.colorcolumn = ""
	end,
})

--[[
vim.api.nvim_create_autocmd({ "LspAttach" }, {
	-- group = "Hierarchy",
	desc = "Set up the :FunctionReferences user command",
	callback = function()
		local opts = {}
		require("hierarchy").setup(opts)
	end,
})
]]
--
