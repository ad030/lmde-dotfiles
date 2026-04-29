-- debug adapter protocol
vim.pack.add({
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/jay-babu/mason-nvim-dap.nvim",
})

local dap = require("dap")

require("mason-nvim-dap").setup()

vim.keymap.set("n", "<leader>b", function()
	dap.toggle_breakpoint()
end, { desc = "Debug: Toggle Breakpoint" })

vim.keymap.set("n", "<leader>B", function()
	dap.set_breakpoint()
end, { desc = "Debug: Set Breakpoint" })

vim.keymap.set("n", "<F8>", function()
	dap.continue()
end, { desc = "Debug: Enter/Exit" })

vim.keymap.set("n", "<F5>", function()
	dap.step_into()
end, { desc = "Debug: Step Into" })

vim.keymap.set("n", "<F6>", function()
	dap.step_over()
end, { desc = "Debug: Step Over" })

vim.keymap.set("n", "<F7>", function()
	dap.step_out()
end, { desc = "Debug: Step Out/Return" })
