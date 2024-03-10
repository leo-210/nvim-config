return {
    {
        "Mofiqul/dracula.nvim",
        config = function ()
            require("dracula").setup({
                show_end_of_buffer = true,
                italic_comment = true,
            })

            vim.cmd.colorscheme("dracula")
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require("lualine").setup({
                options = {
                    theme = "dracula",
                },
            })
        end
    }
}
