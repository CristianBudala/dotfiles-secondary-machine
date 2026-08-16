-- ==============================================================================
-- Neovim Options
-- ==============================================================================

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Appearance & Colors
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.pumheight = 10
opt.showmode = false

-- Window Splits
opt.splitright = true
opt.splitbelow = true

-- Clipboard (Wayland / System Clipboard)
opt.clipboard = "unnamedplus"

-- Undo & Backup
opt.undofile = true
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- Timings
opt.updatetime = 250
opt.timeoutlen = 300

-- Mouse & UI
opt.mouse = "a"
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.confirm = true
