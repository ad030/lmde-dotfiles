return {
	c = {
		formatters = {
			"clang-format",
		},
		lsp = {
			"clangd",
		},
	},

	sql = {
		formatters = {
			"sleek",
		},
	},

	lua = {
		formatters = {
			"stylua",
		},
		lsp = {
			"lua-language-server",
		},
	},

	java = {
		formatters = {
			"google-java-format",
		},
		dap = {
			"java-debug-adapter",
			"java-test",
		},
		lsp = {
			"jdtls",
		},
	},

	python = {
		formatters = {
			"black",
			"isort",
		},
		linters = {
			"debugpy",
		},
		lsp = {
			"pyright",
		},
	},

	javascript = {
		formatters = {
			"prettierd",
		},
		linters = {
			"eslint_d",
		},
	},

	typescript = {
		formatters = {
			"prettierd",
		},
		linters = {
			"eslint_d",
		},
		lsp = {
			"typescript-language-server",
		},
	},

	css = {
		formatters = {
			"prettierd",
		},
	},

	html = {
		formatters = {
			"prettierd",
		},
	},

	json = {
		formatters = {
			"prettierd",
		},
	},

	yaml = {
		formatters = {
			"prettierd",
		},
	},

	markdown = {
		formatters = {
			"prettierd",
		},
	},

	graphql = {
		formatters = {
			"prettierd",
		},
	},

	xml = {
		formatters = {
			"xmlformatter",
		},
	},

	csharp = {
		formatters = {
			"clang-format",
		},
	},

	latex = {
		formatters = {
			"latexindent",
		},
	},

	-- verilog = {
	-- 	formatters = {
	-- 		"clang-format",
	-- 	},
	-- 	lsp = {
	-- 		"hdl-checker",
	-- 	},
	-- },

	vim = {
		lsp = {
			"vim-language-server",
		},
	},
}
