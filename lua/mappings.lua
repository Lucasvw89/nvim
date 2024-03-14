vim.keymap.set("n", "<leader>qq", ":wqa!<CR>", {})

vim.keymap.set({"n", "v"}, ";", ":", {})
--vim.keymap.set({"n", "v", "i"}, "<C-c>", "<Esc>", {})

vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

vim.keymap.set("n", "<leader>-", ":split<CR><C-j>", {})
vim.keymap.set("n", "<leader>_", ":vsplit<CR><C-l>", {})
