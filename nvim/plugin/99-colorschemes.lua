vim.pack.add({
	"https://github.com/catppuccin/nvim",
	"https://github.com/rebelot/kanagawa.nvim",
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/sainnhe/gruvbox-material",
	"https://github.com/morhetz/gruvbox",
})

require("catppuccin").setup({
	flavour = "macchiato",
	transparent_background = true,
})

require("tokyonight").setup({
	style = "storm",
	transparent = true,
})

require("kanagawa").setup({
	transparent = true,
})

-- gruvbox material
do
	vim.g.gruvbox_material_enable_italic = true
	vim.g.gruvbox_material_transparent_background = true
	vim.g.gruvbox_material_foreground = "original"
end

-- gruvbox original
do
	vim.g.gruvbox_transparent_bg = true
	vim.g.gruvbox_italic = true
end

local colorschemes = {
	"gruvbox-material",
	"gruvbox",
	"catppuccin",
	"kanagawa",
	"tokyonight",
}

local chosen = colorschemes[1]

vim.cmd.colorscheme(chosen)
