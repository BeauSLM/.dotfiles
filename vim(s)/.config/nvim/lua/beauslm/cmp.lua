-------cmp.lua----------
-- TODO:
-- Turn off automatic popups
-- Autocommands to load completions for a given

-- Setup nvim-cmp

local luasnip = require("luasnip")
local cmp = require'cmp'

-- cmp + autopairs
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())

cmp.setup({
    enabled = true,
    -- TODO: find a way to make this nice
    -- completion = { autocomplete = false, },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
          ["<C-n>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<C-p>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['<C-y>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
      },
    },
    sources = {
      { name = 'nvim_lua' },
      { name = 'crates' },
      { name = 'vim-dadbod-completion' },
      { name = 'luasnip' },
      { name = 'nvim_lsp' },
      { name = 'treesitter' },
      { name = 'path' },
      { name = 'buffer', keyword_length = 4 },
    },
    formatting = {
      format = require("lspkind").cmp_format({with_text = true, menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Nvim-Lua]",
          treesitter = "[Treesitter]",
          latex_symbols = "[Latex]",
          path = "[Path]",
        })}),
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    }
})

