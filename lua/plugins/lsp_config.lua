return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            ensure_installed = {
                "lua_ls",
                "clangd",
            },
            handlers = {
                function (server)
                    require("lspconfig")[server].setup {
                        cpabilities = require("cmp_nvim_lsp").default_capabilities()
                    }
                end,
            },
            automatic_installation = true,
        }
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
                settings = {
                       Lua = {
                           diagnostics = {
                               globals = { "vim" }
                           }
                       }
                   }
            })

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

        end
    },
}
