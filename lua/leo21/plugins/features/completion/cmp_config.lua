return function ()
    local cmp = require('cmp')
    local luasnip = require("luasnip")

    cmp.setup({
        sources = {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'vimtex' },
        },
        mapping = cmp.mapping.preset.insert({
            -- `Enter` key to confirm completion
            ['<CR>'] = cmp.mapping.confirm({select = true}),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    local entry = cmp.get_selected_entry()
                    if not entry and luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                        return
                    elseif not entry then
                        cmp.select_next_item({
                            behavior = cmp.SelectBehavior.Select
                        })
                    end
                    cmp.confirm()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, { "i", "s" }),

            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    local entry = cmp.get_selected_entry()
                    if not entry and luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                        return
                    elseif not entry then
                        cmp.select_next_item({
                            behavior = cmp.SelectBehavior.Select
                        })
                    end
                    cmp.confirm()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { "i", "s" }),
            -- Ctrl+Space to trigger completion menu
            ['<C-Space>'] = cmp.mapping.complete(),
        })
    })
end
