-- put the module names in the 'plugins' folder, not the plugin names
local plugin_list = {
    "appearance",
    "features",
}

local plugins = {}
for i, v in ipairs(plugin_list) do
	plugins[i] = require("leo21.plugins." .. v)
end
require("lazy").setup(plugins)
