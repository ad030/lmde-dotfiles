local tools = require("../tools")

return {
	-- Autoformat
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 750,
			lsp_fallback = true,
		},

		formatters = {
			["clang-format"] = {
				prepend_args = {
					"--style",
					[[{ 
							BasedOnStyle: LLVM, 
							IndentWidth: 8, 
							BreakBeforeBraces: Allman 
						}]],
				},
			},
			["sql_formatter"] = {
				prepend_args = {
					"--config",
					[[{
							"language": "sqlite",
							"tabWidth": 8,
							"keywordCase": "upper",
							"linesBetweenQueries": 2,
							"newlineBeforeSemicolon": true
						}]],
				},
			},
			["latexindent"] = {
				prepend_args = {
					"-m",
				},
			},

			["prettierd"] = {
				env = {
					PRETTIERD_DEFAULT_CONFIG = vim.fn.expand(
						vim.fn.stdpath("config") .. "/utils/formatter-config/.prettierrc.json"
					),
				},
			},
		},

		formatters_by_ft = {
			lua = tools.lua.formatters,

			java = tools.java.formatters,

			-- Conform can also run multiple formatters sequentially
			python = tools.python.formatters,
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			javascript = tools.javascript.formatters,

			typescript = tools.typescript.formatters,

			css = tools.css.formatters,

			html = tools.html.formatters,

			json = tools.html.formatters,

			yaml = tools.html.formatters,

			markdown = tools.markdown.formatters,

			graphql = tools.graphql.formatters,

			xml = tools.xml.formatters,

			csharp = tools.csharp.formatters,

			c = tools.c.formatters,

			sql = tools.sql.formatters,

			tex = tools.latex.formatters,
		},
	},
}
