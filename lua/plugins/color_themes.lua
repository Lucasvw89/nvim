return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            flvaour = "mocha",
            transparent_background = false,
            dim_inactive = {
                enabled = false,
                shade = "blue",
                percentage = 0.15,
            },
        },
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        opts = {
            options = {
                transparency = true,
            },
        },
    },
    {
        "AstroNvim/astrotheme",
        opts = {},
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            styles = {
                transparency = true;
            }
        }
    },
    {
        "Shatur/neovim-ayu",
        config = function ()
            require('lualine').setup({
              options = {
                theme = 'ayu',
              },
            })
        end
    }
}
