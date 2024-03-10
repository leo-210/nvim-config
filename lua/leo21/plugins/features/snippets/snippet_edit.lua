vim.api.nvim_create_user_command("SnippetEdit", function ()
    local handle = io.popen("echo $HOME")
    if not handle then
        return
    end

    local home = handle:read("*a"):gsub("\n", "")
    handle:close()

    local snippets_dir = home .. "/.config/nvim/lua/leo21/lua_snippets" .. "/"

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

        local template, e_ = io.open(snippets_dir .. "snippet_template", "r")
        if not template then
            print(e_)
            return
        end

        f:write(template:read("*all"))
        template:close()
        f:write('\nls.add_snippets("'..filetype..'", {\n    \n})')
        f:close()

        f, e = io.open(snippets_dir .. "init.lua", "a")
        if not f then
            print(e)
            return
        end
        f:write('\nrequire("leo21.lua.lua_snippets.' .. filetype .. '")')
        f:close()
    end

    vim.cmd("split " .. file_path)
end, {})
