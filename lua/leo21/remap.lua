vim.g.mapleader = " "

-- To make the Escape key work in the terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<leader>gg", function ()
    vim.cmd("tabnew")
    vim.cmd("term lazygit")
    vim.cmd("startinsert")
end, { desc = "Open LazyGit" })

-- Keyboard layout specific remap
vim.keymap.set("n", "<leader>s", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set("n", ".", ":")
vim.keymap.set("n", ":", ".")
