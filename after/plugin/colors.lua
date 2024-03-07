function SetColorscheme(color)
	color_ = color or "dracula"
	vim.cmd.colorscheme(color_)
end

require("dracula").setup({
	colors = {
	},
	show_end_of_buffer = true,
	italic_comment = true,
	
})

SetColorscheme()
