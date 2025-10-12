local tools_by_filetype = {
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
			"sql_formatter",
		},
	},

	lua = {
		formatters = {
			"stylua",
		},
		lsp = {
			"lua_ls",
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
			"tsserver",
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

	verilog = {
		formatters = {
			"clang-format",
		},
		lsp = {
			"hdl-checker",
		},
	},
}

return tools_by_filetype
