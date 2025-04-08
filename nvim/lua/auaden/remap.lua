vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<C-y>", [["+y]])

vim.keymap.set("i", "jj", "<Esc>")

vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Open definition in a vertical split
vim.keymap.set('n', 'gvd', function()
  vim.cmd('vsplit')
  vim.lsp.buf.definition()
end, { noremap = true, silent = true })

-- Open definition in a horizontal split
vim.keymap.set('n', 'gsd', function()
  vim.cmd('split')
  vim.lsp.buf.definition()
end, { noremap = true, silent = true })

-- Open definition in a new tab
vim.keymap.set('n', 'gtd', function()
  vim.cmd('tab split')
  vim.lsp.buf.definition()
end, { noremap = true, silent = true })

-- Add these after your plugin setup
vim.api.nvim_set_keymap('n', '<leader>cc', ':CopilotChat<CR>', { noremap = true, silent = true, desc = 'Open Copilot Chat' })
vim.api.nvim_set_keymap('v', '<leader>cc', ':CopilotChatVisual<CR>', { noremap = true, silent = true, desc = 'Open Copilot Chat with selection' })
vim.api.nvim_set_keymap('n', '<leader>ce', ':CopilotChatExplain<CR>', { noremap = true, silent = true, desc = 'Explain code' })
vim.api.nvim_set_keymap('n', '<leader>ct', ':CopilotChatTests<CR>', { noremap = true, silent = true, desc = 'Generate tests' })
vim.api.nvim_set_keymap('n', '<leader>cf', ':CopilotChatFix<CR>', { noremap = true, silent = true, desc = 'Fix code' })
