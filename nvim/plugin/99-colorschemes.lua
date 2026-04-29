vim.pack.add({
	"https://github.com/catppuccin/nvim",
	"https://github.com/rebelot/kanagawa.nvim",
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/sainnhe/gruvbox-material",
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

-- gruvbox material config
do
	vim.g.gruvbox_material_enable_italic = true
	vim.g.gruvbox_material_enable_bold = false
	vim.g.gruvbox_material_transparent_background = true
	vim.g.gruvbox_material_foreground = "original"
end

local colorschemes = {
	"gruvbox-material",
	"catppuccin",
	"kanagawa",
	"tokyonight",
}

local selected = colorschemes[1]
vim.cmd.colorscheme(selected)
