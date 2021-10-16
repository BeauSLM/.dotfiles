-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    enabled = true,
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
      { name = 'luasnip' },
      { name = 'nvim_lua' },
      { name = 'nvim_lsp' },
      { name = 'treesitter' },
      { name = 'path' },
      { name = 'buffer' },
      { name = 'vim-dadbod-completion' },
      -- { name = 'crates' },
    },
    formatting = {
      format = require("lspkind").cmp_format({with_text = true, menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Lua]",
          treesitter = "[Treesitter]",
          latex_symbols = "[Latex]",
          path = "[Path]",
        })}),
    },
})
