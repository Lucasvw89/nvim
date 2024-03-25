-- convenience
vim.keymap.set("n", "<leader>qq", ":wqa!<CR>", {})

vim.keymap.set({"n", "v"}, ";", ":", {})
vim.keymap.set({"n", "v", "i"}, "<C-c>", "<Esc>", {})
vim.keymap.set({"t"}, "<C-x>", "<C-\\><C-n>", {})

-- windows and terminals
-- move around
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- split windows
vim.keymap.set("n", "<leader>h", ":split<CR> | <C-w>= | <C-w>j", {})
vim.keymap.set("n", "<leader>v", ":vsplit<CR> | <C-w>= | <C-w>l", {})

-- create terminals
vim.keymap.set("n", "<A-h>", ":split<CR> | <C-w>j | :term<CR>", {})
vim.keymap.set("n", "<A-v>", ":vsplit<CR> | <C-w>l | :term<CR>", {})
