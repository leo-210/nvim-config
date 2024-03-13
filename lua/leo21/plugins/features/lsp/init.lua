return {
    {
        'williamboman/mason.nvim',
        config = function ()
            require('mason').setup()
        end
    },
	{
        'williamboman/mason-lspconfig.nvim',
        config = function ()
            local lsp_zero = require('lsp-zero')
            require('mason-lspconfig').setup({
                ensure_installed = {},
                handlers = {
                  lsp_zero.default_setup,
                },
            })
        end
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function ()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(function(_, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})
            end)

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = { globals = {'vim'} },
                    },
                },
            }
        end,
    },
    {
        'neovim/nvim-lspconfig',
    },

}
