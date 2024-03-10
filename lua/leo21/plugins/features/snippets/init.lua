return {
    'L3MON4D3/LuaSnip',
    config = function ()
        local ls = require("luasnip")

        ls.config.set_config({
            link_children = true,
            enable_autosnippets = true,
        })

        require("leo21.plugins.features.snippets.snippet_edit")
        require("leo21.lua_snippets")
    end
}
