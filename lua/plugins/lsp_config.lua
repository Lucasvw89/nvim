return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        opts = {
            ui = {
                border = "rounded",
            }
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            ensure_installed = {
                "lua_ls",
                "clangd",
                "pyright",
                "jdtls",
                "vtsls",
                "html",
                "cssls",
                "dockerls",
            },
            handlers = {
                function (server)
                    require("lspconfig")[server].setup {
                        capabilities = require("cmp_nvim_lsp").default_capabilities()
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
            require("neodev").setup({})
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

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})

        end
    },
}
