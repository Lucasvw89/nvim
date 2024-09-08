return {
    'Wansmer/treesj',
    event = "VeryLazy",
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    -- config = function()
    --     require('treesj').setup({})
    --     vim.keymap.set("n", "<A-j>", require("treesj").toggle)
    -- end,
}
