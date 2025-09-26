return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      -- "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      -- require("luasnip.loaders.from_vscode").lazy_load()
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<S-Enter>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping(function(fallback)         -- jump forward in snippet
              if luasnip.jumpable(1) then
                luasnip.jump(1)
              else
                fallback()
            end
            end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)         -- jump forward in snippet
              if luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
            end
            end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
            -- local luasnip = require('luasnip')
            -- Lazy load snippets from VSCode
            require("luasnip/loaders/from_vscode").lazy_load({
                paths = {
                    vim.fn.expand("$HOME/.config/nvim/snippets"), -- specify the correct directory
                }
            })
    end,
  },
}
