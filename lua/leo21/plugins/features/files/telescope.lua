return {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

        local wk = require("which-key")
        wk.register({
            f = {
                name = "File",
                f = "Find files"
            },
        }, { prefix = "<leader>" })
    end
}
