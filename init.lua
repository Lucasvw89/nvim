vim.g.mapleader = " "

vim.wo.number = true
vim.wo.relativenumber = true

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

require("lazy").setup({

    require("telescope"),

    {'williamboman/mason.nvim', opts = {}},
    {'williamboman/mason-lspconfig.nvim', opts = {}, ensure_installed = {"lua_ls"}},
    {
	    'neovim/nvim-lspconfig',
	    config = function(server)
		    require("lspconfig").lua_ls.setup {}
	    end
    },
})

