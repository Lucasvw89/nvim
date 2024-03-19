return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup()

        vim.keymap.set({"n", "t"}, "<A-v>", "<C-\\><C-n>:ToggleTerm size=80 direction=vertical<CR>", {})
        vim.keymap.set({"n", "t"}, "<A-h>", "<C-\\><C-n>:ToggleTerm size=20 direction=horizontal<CR>", {})
    end
}
