-- put the file names in the 'plugins' folder, not the plugin names
local plugin_list = {
	"telescope",
	"dracula",
	"treesitter",
	"lualine",
	"telescope_undo",
	"lsp_zero",
    "nvim_tree",
    "which_key"
}

local plugins = {}
for i, v in ipairs(plugin_list) do
	plugins[i] = require("leo21.plugins." .. v)
end
require("lazy").setup(plugins)
