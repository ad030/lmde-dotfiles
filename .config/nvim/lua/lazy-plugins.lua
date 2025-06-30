-- require plugins here to make lazy install them

return {
	-- colorscheme
	-- require("themes.gruvbox-material"),
	-- require("themes.kanagawa"),
	require("themes.catppuccin"),
	-- require("themes.tokyonight"),

	{
		dir = "~/projects/checkin-nvim/",
	},

	-- adjusts shift and tab length based on file
	require("plugins.vim-sleuth"),

	-- toggle commenting a line
	require("plugins.comment"),

	-- highlight syntax
	require("plugins.nvim-treesitter"),

	-- git decorations within a file
	require("plugins.gitsigns"),

	-- startup ascii art plugin
	require("plugins.alpha"),

	-- displays possible commands based on what keys have been pressed
	require("plugins.which-key"),

	-- plugin to search files
	require("plugins.telescope"),

	-- set up lsps
	require("plugins.nvim-lspconfig"),

	-- config jdtls lsp
	require("plugins.nvim-jdtls"),

	-- html color highlighting
	require("plugins.nvim-colorizer"),

	-- preview markdown in neovim
	-- require("plugins.markview-nvim"),
	require("plugins.render-markdown"),

	-- view markdown files in separate window
	require("plugins.markdown-preview"),

	-- obsidian note taking
	require("plugins.obsidian"),

	-- code debugger protocol
	require("plugins.nvim-dap"),

	-- code formatter
	require("plugins.conform"),

	-- autocompletion for code
	require("plugins.nvim-cmp"),

	-- highlight todo comments
	require("plugins.todo-comments"),

	-- various plugins
	require("plugins.mini"),

	-- terminal in neovim plugin
	require("plugins.toggleterm"),

	-- latex filetype plugin
	require("plugins.vimtex"),

	-- buffer-like file explorer
	require("plugins.oil"),

	-- file browser
	require("plugins.neo-tree"),

	-- function stack visualizer
	require("plugins.hierarchy"),

	-- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
	--    This is the easiest way to modularize your config.
	--
	--  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
	--    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
	-- { import = 'custom.plugins' },
}
