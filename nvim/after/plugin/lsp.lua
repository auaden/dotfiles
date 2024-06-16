local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  lsp.buffer_autoformat()
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end)

vim.g.rustaceanvim = {
  server = {
    capabilities = lsp.get_capabilities()
  },
}

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
      'sql',
      'yaml'
    },
    ['metals'] = {
      'scala'
    },
    ['rust_analyzer'] = {
      'rust'
    },
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
