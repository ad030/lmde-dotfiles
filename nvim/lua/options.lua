-- variables for vim classes
local o = vim.opt
local g = vim.g

-- Set comma as the leader key
g.mapleader = ","
g.maplocalleader = ","

-- no nerd font
g.have_nerd_font = true

-- Make line numbers default
o.number = true

-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
o.mouse = "a"

-- Don't show the mode, since it's already in status line
o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this oion if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
o.clipboard = "unnamedplus"

-- Enable break indent
o.breakindent = true

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
o.ignorecase = true
o.smartcase = true

-- Keep signcolumn on by default
o.signcolumn = "yes"

-- Decrease update time
o.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
o.timeoutlen = 300

-- Configure how new splits should be opened
o.splitright = true
o.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
o.list = true
o.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}

-- Preview substitutions live, as you type!
o.inccommand = "split"

-- Show which line your cursor is on
o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
o.scrolloff = 4

-- 80 column border for good coding style
o.cc = "80"

-- set fast scrolling
o.ttyfast = true

-- bash-like tab completion
o.wildmode = "longest:list"

-- autoindent in c style
o.cindent = true

-- tabs are 8 spaces long
o.tabstop = 8
o.softtabstop = 8
-- indents are 8 spaces long
o.shiftwidth = 8

-- replace tabs with equivalent amount of spaces
o.expandtab = true

-- conceallevel
o.conceallevel = 1

-- use terminal colors
o.termguicolors = true

o.wrap = true

-- folding
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
