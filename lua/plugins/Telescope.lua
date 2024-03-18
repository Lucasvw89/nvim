vim.api.nvim_create_user_command('ConfigFiles',
    function ()
        local curr_os = vim.loop.os_uname().sysname
        if curr_os == "Windows_NT" then
            require('telescope.builtin').find_files({ cwd = "~\\AppData\\Local\\nvim" })
        else
            require('telescope.builtin').find_files({ cwd = "~/.config/nvim" })
        end
    end,
  {}
)

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, {})
        vim.keymap.set('n', '<leader>fc', ':ConfigFiles<CR>', {})
        vim.keymap.set("n", "<leader>ft", builtin.commands, {})
    end,
}
