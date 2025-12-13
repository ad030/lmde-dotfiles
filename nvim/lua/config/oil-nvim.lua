-- neovim buffer file explorer
vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

require("oil").setup()

-- keymaps
vim.keymap.set("n", "<leader>oo", function()
	require("oil").open()
end, { desc = "Open oil browser in parent directory" })
