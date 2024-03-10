return {
    "lervag/vimtex",
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_syntax_conceal = {
            accents = 1,
            ligatures = 1,
            cites = 1,
            fancy = 1,
            spacing = 1,
            greek = 1,
            math_bounds = 1,
            math_delimiters = 1,
            math_fracs = 1,
            math_super_sub = 1,
            math_symbols = 0,
            sections = 0,
            styles = 1,
        }
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = "aux",
            out_dir = "",
            callback = 1,
            continuous = 1,
            executable = "latexmk",
            hooks = {},
            options = {
                "-verbose",
                "-file-line-error",
                "-synctex=1",
                "-interaction=nonstopmode",
            },
        }
        vim.g.vimtex_quickfix_enabled = false
    end,
    config = function ()
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
  end
}
