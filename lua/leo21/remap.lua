vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- To make the Escape key work in the terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<leader>gg", function ()
    vim.cmd("tabnew")
    vim.cmd("term lazygit")
    vim.cmd("startinsert")
end, { desc = "Open LazyGit" })

-- Keyboard layout specific remap
vim.keymap.set("n", ".", ":")
vim.keymap.set("n", ":", ":")
vim.keymap.set({"n", "v"}, "Ê", ".")
vim.keymap.set({"n", "v"}, "w", "$")
vim.keymap.set({"n", "v"}, "é", "w")
vim.keymap.set({"n", "v"}, "ç", "0")
