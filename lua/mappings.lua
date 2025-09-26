-- convenience
-- vim.keymap.set("n", "<leader>qq", ":wqa!<CR>", {})

-- vim.keymap.set({"n", "v", "i"}, "<C-c>", "<Esc>", {})
vim.keymap.set("i", "<C-h>", "<C-w>", {})
vim.keymap.set("i", "<C-BS>", "<C-w>", {})
vim.keymap.set({"t"}, "<C-x>", "<C-\\><C-n>", {})

vim.keymap.set({"v"}, "<C-c>", '"+y', {})

-- windows and terminals
-- move around
-- vim.keymap.set("n", "<C-h>", "<C-w>h", {})
-- vim.keymap.set("n", "<C-j>", "<C-w>j", {})
-- vim.keymap.set("n", "<C-k>", "<C-w>k", {})
-- vim.keymap.set("n", "<C-l>", "<C-w>l", {})

vim.keymap.set("n", "j", "gj", {})
vim.keymap.set("n", "k", "gk", {})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

-- split windows
vim.keymap.set("n", "<leader>h", ":split<CR> | <C-w>= | <C-w>j", {})
vim.keymap.set("n", "<leader>v", ":vsplit<CR> | <C-w>= | <C-w>l", {})

-- create terminals
vim.keymap.set("n", "<A-h>", ":split<CR> | <C-w>j | :term<CR>", {})
vim.keymap.set("n", "<A-v>", ":vsplit<CR> | <C-w>l | :term<CR>", {})

-- competitive programming
vim.keymap.set("n", "<F10>", ":w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>", {})
-- noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
