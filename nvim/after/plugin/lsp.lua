local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end)

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'graphql',
  'tailwindcss',
  'svelte'
})

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['null-ls'] = {
      'graphql',
      'javascript', 
      'typescript', 
      'javascriptreact', 
      'typescriptreact', 
      'svelte',
      'java',
      'proto',
    },
    ['metals'] = {
      'scala'
    }
   }
})

lsp.skip_server_setup({'jdtls'})
lsp.setup()

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})
