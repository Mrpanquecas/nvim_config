local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'rust_analyzer', 'gopls', 'html', 'lua_ls'},
  handlers = {
    lsp_zero.default_setup,
  }
})

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)


local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
},
  --formatting = {
   -- fields = {'abbr', 'kind', 'menu'},
    --format = require('lspkind').cmp_format({
     -- mode = 'symbol', -- show only symbol annotations
      --maxwidth = 50, -- prevent the popup from showing more than provided characters
      --ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
    --})
 -- }
})
