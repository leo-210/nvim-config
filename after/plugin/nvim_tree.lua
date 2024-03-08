require("nvim-tree").setup()
local api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>ft", function ()
    api.tree.open({ find_file = true })
end)
vim.keymap.set("n", "<leader>fc", api.tree.close_in_this_tab)
