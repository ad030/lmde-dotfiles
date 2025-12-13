vim.pack.add({
        {src="https://github.com/catppuccin/nvim"},
        {src="https://github.com/rebelot/kanagawa.nvim"},
        {src="https://github.com/folke/tokyonight.nvim"},
        {src="https://github.com//sainnhe/gruvbox-material"},
})

require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = true,
})

require("tokyonight").setup({
        style = "night",
        transparent = true,
})

vim.cmd.colorscheme("catppuccin")
-- vim.cmd.colorscheme("tokyonight")
