require("bufferline").setup({
	options = {
		mode = "buffers",
		show_buffer_close_icons = false,
		show_close_icon = false,
		always_show_bufferline = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = false,
			},
		},
	},
})

vim.api.nvim_set_keymap("n", "<leader>b", ":BufferLinePick<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>w", ":bnext<bar>bdelete #<CR>", { noremap = true, silent = true })
