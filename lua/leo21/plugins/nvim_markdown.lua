return {
    "ixru/nvim-markdown",
    --ft = "markdown",
    init = function ()
        vim.g.vim_markdown_conceal = 2
        vim.o.conceallevel = 2
    end
}
