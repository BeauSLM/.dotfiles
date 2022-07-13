local config = {}
function config.treesitter()
  require 'nvim-treesitter.configs'.setup {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "c", "cmake", "comment", "cpp", "css", "fish", "glsl", "go", "help", "html",
      "http", "java", "javascript", "json", "json5", "latex", "llvm", "lua", "make",
      "markdown", "markdown_inline", "ninja", "prisma", "python", "regex", "rust",
      "sql", "todotxt", "toml", "tsx", "typescript", "vim", "yaml", "zig",
    },
  }
end

function config.sonokai()
  local opt = { "andromeda", "default", "andromeda", "shusia", "maia", "atlantis", "espresso" }
  local v = opt[math.random(1, #opt)]
  vim.g.sonokai_style = v
  vim.g.sonokai_enable_italic = 1
  vim.cmd('colorscheme sonokai')
end

function config.gruvbox()
  vim.cmd("set background=dark")
  vim.g.gruvbox_material_invert_selection = 0
  vim.g.gruvbox_material_enable_italic = 1
  vim.cmd([[if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif]])
  -- vim.g.gruvbox_material_invert_signs = 1
  vim.g.gruvbox_material_improved_strings = 1
  vim.g.gruvbox_material_improved_warnings = 1
  vim.g.gruvbox_material_enable_bold = 1
  vim.g.gruvbox_material_palette = "original"
  vim.cmd("colorscheme gruvbox-material")
  vim.cmd("doautocmd ColorScheme")
end

function config.ts_rainbow()
  require 'nvim-treesitter.configs'.setup {
    rainbow = {
      enable = true,
      extended_mode = true,
    }
  }
end

function config.cmp()
end

function config.navigator()
  -- nvim-autopairs
  -- require('nvim-autopairs').setup { disable_filetype = { "TelescopePrompt" , "guihua", "guihua_rust", "clap_input" }, }

  -- cmp
  -- if vim.o.ft == 'clap_input' and vim.o.ft == 'guihua' and vim.o.ft == 'guihua_rust' then
  --   require'cmp'.setup.buffer { completion = {enable = false} }
  -- end

  require('navigator').setup {
    lsp = {
      servers = {
        'cssmodules_ls',
        'eslint',
        'tailwindcss',
      },
      disable_lsp = { "rust_analyzer", "clangd" },
      format_on_save = false,
    },
    lsp_signature_help = true,
    signature_help_cfg = require('lsp_signature').setup {
      always_trigger = true,
    }
  }

  require('rust-tools').setup({
    server = {
      on_attach = function(client, bufnr)
        require('navigator.lspclient.mapping').setup({ client = client, bufnr = bufnr }) -- setup navigator keymaps here,
        -- otherwise, you can define your own commands to call navigator functions
      end,
    }
  })

  require("clangd_extensions").setup {
    server = {
      on_attach = function(client, bufnr)
        require('navigator.lspclient.mapping').setup({ client = client, bufnr = bufnr }) -- setup navigator keymaps here,
        -- otherwise, you can define your own commands to call navigator functions
      end,
    }
  }
end

function config.comment()
  require('Comment').setup {
    pre_hook = function(ctx)
      -- Only calculate commentstring for tsx filetypes
      if vim.bo.filetype == 'typescriptreact' then
        local U = require('Comment.utils')

        -- Determine whether to use linewise or blockwise commentstring
        local type = ctx.ctype == U.ctype.line and '__default' or '__multiline'

        -- Determine the location where to calculate commentstring from
        local location = nil
        if ctx.ctype == U.ctype.block then
          location = require('ts_context_commentstring.utils').get_cursor_location()
        elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
          location = require('ts_context_commentstring.utils').get_visual_start_location()
        end

        return require('ts_context_commentstring.internal').calculate_commentstring({
          key = type,
          location = location,
        })
      end
    end,
  }
end

return config
