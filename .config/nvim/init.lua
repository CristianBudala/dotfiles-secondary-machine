-- ==============================================================================
-- Neovim Modular Configuration - Entry Point
-- ==============================================================================

-- Set leader keys before loading lazy
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core configuration
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy")
