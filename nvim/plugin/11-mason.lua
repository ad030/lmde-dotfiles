vim.pack.add({
        "https://github.com/mason-org/mason.nvim",
        "https://github.com/mason-org/mason-lspconfig.nvim",
        "https://github.com/WhoIsSethDaniel/mason-tool-installer",
})


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
