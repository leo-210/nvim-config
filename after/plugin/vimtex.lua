vim.g.vimtex_view_method = "zathura"

local wk = require("which-key")
wk.register({
    l = {
        name = "Latex",
        i = "Info",
        I = "Full info",
        t = "Open toc",
        T = "Toggle toc",
        q = "Log",
        v = "View",
        r = "Reverse search",
        l = "Compile",
        L = "Compile selected",
        k = "Stop",
        K = "Stop all",
        e = "Error",
        o = "Output",
        g = "Status",
        G = "Status all",
        c = "Clean",
        C = "Clean full",
        m = "Imaps list",
        x = "Reload",
        X = "Reload state",
        s = "Toggle main",
        a = "Context menu",
    },
}, { prefix = "<localleader>" })

wk.register({
    d = {
        name = "Delete",
        se = "Env",
        sc = "Cmd",
        ["s$"] = "Math",
    },
    c = {
        name = "Change",
        se = "Env",
        sc = "Cmd",
        ["s$"] = "Math",
    },
    t = {
        name = "Toggle",
        sf = "Cmd Frac",
        sc = "Cmd Star",
        se = "Env Star",
        ["s$"] = "Env math",
        sd = "Delim",
        sD = "Delim reverse",
    }
})
