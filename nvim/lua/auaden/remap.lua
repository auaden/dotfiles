vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<C-y>", [["+y]])

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "cpw", function()
	vim.cmd("CopilotChat")
end, { noremap = true, silent = true })

vim.keymap.set("n", "cp", function()
	vim.cmd("CopilotChat")
end, { noremap = true, silent = true })

vim.keymap.set("n", "cpe", function()
	vim.cmd("CopilotChatExplain")
end, { noremap = true, silent = true })

vim.keymap.set("n", "cpo", function()
	vim.cmd("CopilotChatOptimize")
end, { noremap = true, silent = true })

vim.keymap.set("n", "cpt", function()
	vim.cmd("CopilotChatTests")
end, { noremap = true, silent = true })

-- Open definition in a vertical split
vim.keymap.set("n", "gvd", function()
	vim.cmd("vsplit")
	vim.lsp.buf.definition()
end, { noremap = true, silent = true })

-- Open definition in a horizontal split
vim.keymap.set("n", "gsd", function()
	vim.cmd("split")
	vim.lsp.buf.definition()
end, { noremap = true, silent = true })

-- Open definition in a new tab
vim.keymap.set("n", "gtd", function()
	vim.cmd("tab split")
	vim.lsp.buf.definition()
end, { noremap = true, silent = true })
