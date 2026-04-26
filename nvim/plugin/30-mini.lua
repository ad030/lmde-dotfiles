vim.pack.add({
        "https://github.com/nvim-mini/mini.ai",
        "https://github.com/nvim-mini/mini.icons",
        "https://github.com/nvim-mini/mini.completion",
        "https://github.com/nvim-mini/mini.diff",
        "https://github.com/nvim-mini/mini.snippets",
        "https://github.com/nvim-mini/mini.statusline",
        "https://github.com/nvim-mini/mini.surround",
})


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
