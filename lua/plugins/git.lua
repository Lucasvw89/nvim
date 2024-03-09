return {
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function ()
            require("gitsigns").setup()
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gaa", ":Git add .<CR>", {})
            vim.keymap.set("n", "<leader>gps", ":Git push<CR>", {})
            vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", {})
        end,
    }
}
