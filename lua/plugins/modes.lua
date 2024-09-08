return {
    "mvllow/modes.nvim",
    version = "^0.2",
    event = "VeryLazy",
    config = function ()
        require("modes").setup({
                colors = {
                bg = "", -- Optional bg param, defaults to Normal hl group
                copy = "#ffff59",
                delete = "#ff5c6a",
                insert = "#78ffc5",
                visual = "#ff45ff",
            },

            -- Set opacity for cursorline and number background
            line_opacity = 0.20,

            -- Enable cursor highlights
            set_cursor = false,

            -- Enable cursorline initially, and disable cursorline for inactive windows
            -- or ignored filetypes
            set_cursorline = true,

            -- Enable line number highlights to match cursorline
            set_number = false,

            -- Disable modes highlights in specified filetypes
            -- Please PR commonly ignored filetypes
            ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
            })
    end
}
