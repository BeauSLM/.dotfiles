-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    enabled = true,
snippet = {
  expand = function(args)
    require('luasnip').lsp_expand(args.body)
  end,
},
sources = {
  { name = 'nvim_lsp' },
  { name = 'treesitter' },
  { name = 'luasnip' },
  { name = 'buffer' },
  { name = 'nvim-lua' },
  -- { name = 'crates' },
},
formatting = {
  format = require("lspkind").cmp_format({with_text = true, menu = ({
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      luasnip = "[LuaSnip]",
      nvim_lua = "[Lua]",
      latex_symbols = "[Latex]",
    })}),
},
})
