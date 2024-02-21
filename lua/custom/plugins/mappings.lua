local keymap = vim.api.nvim_set_keymap
return {
  keymap("n", "<C-t>", ":Neotree toggle<CR>", { noremap = true, silent = true })
}
