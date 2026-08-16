return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        keys = {
            { "<C-\\>", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal" },
            { "<leader>tt", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle Floating Terminal" },
            { "<leader>th", "<cmd>ToggleTerm direction=horizontal size=15<CR>", desc = "Toggle Horizontal Terminal" },
            { "<leader>tv", "<cmd>ToggleTerm direction=vertical size=60<CR>", desc = "Toggle Vertical Terminal" },
        },
        opts = {
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4
                end
            end,
            open_mapping = [[<C-\>]],
            hide_numbers = true,
            shade_terminals = false,
            start_in_insert = true,
            insert_mappings = true,
            terminal_mappings = true,
            persist_size = true,
            direction = "float",
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = "curved",
                winblend = 0,
            },
        },
    },
}
