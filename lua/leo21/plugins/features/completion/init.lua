return {
    require("leo21.plugins.features.completion.sources"),
	{
        'hrsh7th/nvim-cmp',
        config = require("leo21.plugins.features.completion.cmp_config"),
    },
}
