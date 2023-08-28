local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-n>', api.tree.toggle, {})
  vim.keymap.set("n", "<leader>R", vim.cmd.NvimTreeFindFile)
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  git = {
    enable = true
  },
  view = {
    width = 30,
  },
  filters = {
    dotfiles = true,
  },
})
