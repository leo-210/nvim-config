local ls = require("luasnip")

ls.config.set_config({
    link_children = true,
    enable_autosnippets = true,
})

vim.api.nvim_create_user_command("LuaSnipEdit", function ()
    local handle = io.popen("echo $HOME")
    if not handle then
        return
    end

    local home = handle:read("*a"):gsub("\n", "")
    handle:close()

    local snippets_dir = home .. "/.config/nvim/lua/leo21/lua_snippets/"
    print(home)
    local function file_exists(file)
        local f = io.open(file, "rb")
        if f then f:close() end
        return f ~= nil
    end

    local filetype = vim.bo.filetype or "all"
    local file_path = snippets_dir .. filetype .. ".lua"
    if not file_exists(file_path) then
        local f, e = io.open(file_path, "w")
        if not f then
            print(e)
            return
        end

        f:write('local ls = require("luasnip")' ..
            'local s = ls.snippet\n'..
            'local sn = ls.snippet_node\n'..
            'local t = ls.text_node\n'..
            'local i = ls.insert_node\n'..
            'local f = ls.function_node\n'..
            'local c = ls.choice_node\n'..
            'local d = ls.dynamic_node\n'..
            'local r = ls.restore_node\n'..
            'local l = require("luasnip.extras").lambda\n'..
            'local rep = require("luasnip.extras").rep\n'..
            'local p = require("luasnip.extras").partial\n'..
            'local m = require("luasnip.extras").match\n'..
            'local n = require("luasnip.extras").nonempty\n'..
            'local dl = require("luasnip.extras").dynamic_lambda\n'..
            'local fmt = require("luasnip.extras.fmt").fmt\n'..
            'local fmta = require("luasnip.extras.fmt").fmta\n'..
            'local types = require("luasnip.util.types")\n'..
            'local conds = require("luasnip.extras.conditions")\n'..
            'local conds_expand = require("luasnip.extras.conditions.expand")\n\n'..
            'ls.add_snippets("'..filetype..'", {\n    \n})'
        )
        f:close()

        f, e = io.open(snippets_dir .. "init.lua", "a")
        if not f then
            print(e)
            return
        end
        f:write('\nrequire("leo21.lua_snippets.' .. filetype .. '")')
    end

    vim.cmd("split " .. file_path)
end, {})
