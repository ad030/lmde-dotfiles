-- variables for vim classes
local opt = vim.opt

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
opt.number = true

-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

-- Don't show the mode, since it's already in status line
opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard = "unnamedplus"

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
opt.inccommand = "split"

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- 80 column border for good coding style
opt.cc = "80"

-- set fast scrolling
opt.ttyfast = true

-- bash-like tab completion
opt.wildmode = "longest:list"

-- smart indent
opt.smartindent = true

-- tabs are 4 spaces long
opt.tabstop = 4
opt.shiftwidth = 4

-- use terminal colors
opt.termguicolors = true
