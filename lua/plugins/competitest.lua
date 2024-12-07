return {
	'xeluxee/competitest.nvim',
	dependencies = 'MunifTanjim/nui.nvim',
	config = function()
        require('competitest').setup {
            template_file = {cpp = "~/.config/nvim/template_file.cpp"},
        }
    end,
}
