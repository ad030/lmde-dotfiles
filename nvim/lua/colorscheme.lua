vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim" },
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com//sainnhe/gruvbox-material" },
})

do
	require("catppuccin").setup({
		flavour = "macchiato",
		transparent_background = true,
	})
	-- vim.cmd.colorscheme("catppuccin")
end

do
	require("tokyonight").setup({
		style = "night",
		transparent = true,
	})
	-- vim.cmd.colorscheme("tokyonight")
end

do
	vim.g.gruvbox_material_enable_italic = true
	vim.g.gruvbox_material_transparent_background = true
	vim.cmd.colorscheme("gruvbox-material")
end
