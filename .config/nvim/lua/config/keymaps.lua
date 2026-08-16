-- ==============================================================================
-- Neovim Keymaps
-- ==============================================================================

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Remap Space as leader
map({ "n", "v" }, "<Space>", "<Nop>", opts)

-- General Keymaps
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file", silent = true })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window", silent = true })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Quit all without saving", silent = true })
map("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight", silent = true })

-- Better Window Navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize Splits with Arrows
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Window Split Management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Buffer Navigation
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" })

-- Move Lines in Visual Mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down", silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up", silent = true })

-- Better Indentation in Visual Mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Keep Cursor Centered when Scrolling / Searching
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Paste without overwriting clipboard register
map("v", "p", '"_dP', opts)

-- File Explorer (Neo-tree)
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>o", "<cmd>Neotree focus<CR>", { desc = "Focus file explorer" })

-- Quick Diagnostics
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic error float" })
map("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Diagnostic list" })
