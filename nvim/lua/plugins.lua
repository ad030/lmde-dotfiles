-- install plugins
vim.pack.add({
	"https://github.com/folke/which-key.nvim",
	"https://github.com/folke/todo-comments.nvim",
	"https://github.com/jay-babu/mason-nvim-dap.nvim",
	-- "https://github.com/lervag/vimtex",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-mini/mini.ai",
	"https://github.com/nvim-mini/mini.icons",
	"https://github.com/nvim-mini/mini.completion",
	"https://github.com/nvim-mini/mini.diff",
	"https://github.com/nvim-mini/mini.snippets",
	"https://github.com/nvim-mini/mini.statusline",
	"https://github.com/nvim-mini/mini.surround",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer",
})

--[[ PLUGIN CONFIG ]]

-- telescope fuzzy finder
do
	require("plenary")
	require("telescope").setup({
		-- defaults = {
		--   mappings = {
		--     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
		--   },
		-- },
		-- pickers = {}
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown(),
			},
		},
	})

	-- Enable telescope extensions, if they are installed
	pcall(require("telescope").load_extension, "fzf")
	pcall(require("telescope").load_extension, "ui-select")

	-- See `:help telescope.builtin`
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
	vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
	vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "[F]ind [S]elect Telescope" })
	vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
	vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
	vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[F]ind [R]esume" })
	vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = '[F]ind in Recent Files ("." for repeat)' })
	vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

	vim.keymap.set("n", "<leader>/", function()
		builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
			winblend = 10,
			previewer = false,
		}))
	end, { desc = "[/] Fuzzily search in current buffer" })

	vim.keymap.set("n", "<leader>s/", function()
		builtin.live_grep({
			grep_open_files = true,
			prompt_title = "Live Grep in Open Files",
		})
	end, { desc = "[S]earch [/] in Open Files" })

	-- Shortcut for searching your neovim configuration files
	vim.keymap.set("n", "<leader>fn", function()
		builtin.find_files({ cwd = vim.fn.stdpath("config") })
	end, { desc = "[F]ind in [N]eovim files" })
end

-- show keybinds
require("which-key").setup()

-- todo highlighting in comments
require("todo-comments").setup()

-- autoformatter
do
	require("conform").setup({
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
			lua = { "stylua" },

			java = { "google-java-format" },

			python = { "isort", "black" },

			javascript = { "prettierd" },

			typescript = { "prettierd" },

			css = { "prettierd" },

			html = { "prettierd" },

			json = { "prettierd" },

			yaml = { "prettierd" },

			markdown = { "prettierd" },

			csharp = { "clang-format" },
			c = { "clang-format" },

			sql = { "sleek" },

			tex = { "latexindent" },
		},
	})
end

-- require("vim-sleuth")

-- mini.nvim plugins
do
	require("mini.icons").setup()
	require("mini.ai").setup({ n_lines = 500 })
	require("mini.snippets").setup()
	require("mini.completion").setup()
	require("mini.statusline").setup({
		use_icons = vim.g.have_nerd_font,
		section_location = function()
			return "%2l:%-2v"
		end,
	})
end

-- mason package manager
-- and tool installer
do
	require("mason").setup()
	require("mason-lspconfig").setup()
	require("mason-tool-installer").setup({
		ensure_installed = {
			-- lua
			"lua_ls",
			"stylua",
			-- python
			"black",
			"isort",
			"debugpy",
			"pyright",
			-- c
			"clangd",
			-- java
			"google-java-format",
			"jdtls",
			-- javascript/typescript
			"ts_ls",
			"eslint_d",
			-- sql
			"sleek",
			-- vim
			"vimls",
			-- latex
			"latexindent",
		},
		run_on_start = true,
		integrations = {
			["mason-lspconfig"] = true,
		},
	})
end

-- buffer file browser
do
	require("oil").setup()

	-- keymaps
	vim.keymap.set("n", "<leader>oo", function()
		require("oil").open()
	end, { desc = "Open oil browser in parent directory" })
end

-- debug adapter protocol for neovim
do
	require("dap")
	require("mason-nvim-dap")

	vim.keymap.set("n", "<leader>b", function()
		require("dap").toggle_breakpoint()
	end, { desc = "Debug Toggle Breakpoint" })

	vim.keymap.set("n", "<leader>B", function()
		require("dap").set_breakpoint()
	end, { desc = "Debug Set Breakpoint" })

	vim.keymap.set("n", "<F8>", function()
		require("dap").continue()
	end, { desc = "Debug Enter/Exit" })

	vim.keymap.set("n", "<F5>", function()
		require("dap").step_into()
	end, { desc = "Debug Step Into" })

	vim.keymap.set("n", "<F6>", function()
		require("dap").step_over()
	end, { desc = "Debug Step Over" })

	vim.keymap.set("n", "<F7>", function()
		require("dap").step_out()
	end, { desc = "Debug Step Out/Return" })
end
