return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function ()
        require("nvim-tree").setup()
        local api = require("nvim-tree.api")

        vim.keymap.set("n", "<leader>ft", function ()
            api.tree.open({ find_file = true })
        end)
        vim.keymap.set("n", "<leader>fc", api.tree.close_in_this_tab)

        local wk = require("which-key")
        wk.register({
            f = {
                name = "File",
                t = "File tree",
                c = "Close file tree"
            },
        }, { prefix = "<leader>" })
    end
}
