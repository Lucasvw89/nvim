vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4

vim.opt.hlsearch = false
vim.opt.scrolloff = 8

vim.opt.undofile = true

vim.opt.laststatus = 3

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
    ui = {
        -- a number <1 is a percentage., >1 is a fixed size
        size = { width = 0.8, height = 0.8 },
        wrap = true, -- wrap the lines in the ui
        -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
        border = "rounded",
        title = nil, ---@type string only works when border is not "none"
        title_pos = "center", ---@type "center" | "left" | "right"
        -- Show pills on top of the Lazy window
        pills = true, ---@type boolean
        icons = {
          cmd = " ",
          config = "",
          event = "",
          ft = " ",
          init = " ",
          import = " ",
          keys = " ",
          lazy = "󰒲 ",
          loaded = "●",
          not_loaded = "○",
          plugin = " ",
          runtime = " ",
          require = "󰢱 ",
          source = " ",
          start = "",
          task = "✔ ",
          list = {
            "●",
            "➜",
            "★",
            "‒",
          },
        },
    }
})

local virtual_text_enabled = true
vim.diagnostic.config({ virtual_text = virtual_text_enabled })

function ToggleVirtualText()
  virtual_text_enabled = not virtual_text_enabled
  vim.diagnostic.config({ virtual_text = virtual_text_enabled })
end

vim.api.nvim_set_keymap('n', '<leader>tv', ':lua ToggleVirtualText()<CR>', { noremap = true, silent = true })

-- vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme astrodark")
vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "onedark_dark"
-- vim.cmd.colorscheme "onelight"

require("mappings")
