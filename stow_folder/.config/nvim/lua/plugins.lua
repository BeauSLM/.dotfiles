-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local config = require('config')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'itchyny/lightline.vim'
  use {
    'ray-x/navigator.lua',
    requires = {
      { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
      'neovim/nvim-lspconfig',
      'ray-x/lsp_signature.nvim',
      'simrat39/rust-tools.nvim',
      'p00f/clangd_extensions.nvim',
    },
    config = config.navigator
  }

  use {
    'szw/vim-maximizer',
    config = function()
      -- TODO: mess with default mapping ig
      vim.g.maximizer_set_default_mapping = 0
    end
  }

  use 'tpope/vim-fugitive'
  use { 'junegunn/gv.vim', requires = 'vim-fugitive' }
  use { 'tpope/vim-rhubarb', requires = 'vim-fugitive' }
  use { 'shumphrey/fugitive-gitlab.vim', requires = 'vim-fugitive' }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = config.treesitter,
  }

  use {
    'sainnhe/gruvbox-material',
    config = config.gruvbox,
  }

  use {
    'sainnhe/sonokai',
    disable = true,
    config = config.sonokai,
  }

  use {
    'p00f/nvim-ts-rainbow',
    after = 'nvim-treesitter',
    config = config.ts_rainbow,
  }

  use {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      after = 'nvim-treesitter',
      config = function()
        require('nvim-treesitter.configs').setup { context_commentstring { enable = true, enable_autocmd = false, } }
      end
    },
    config = config.comment,
  }

  use {
    'hrsh7th/nvim-cmp',
    disable = true,
    -- after = "LuaSnip",
    after = 'nvim-lspconfig',
    requires = {
      { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp", opt = true },
      -- { "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp", opt = true },
      -- { "hrsh7th/cmp-nvim-lsp-signature-help", after = "nvim-cmp", opt = true },
      -- { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp", opt = true },
      -- { "saadparwaiz1/cmp_luasnip", after = { "nvim-cmp", "LuaSnip" } },
      -- { "hrsh7th/cmp-path", after = "nvim-cmp", opt = true },
      -- { "hrsh7th/cmp-cmdline", after = "nvim-cmp", opt = true },
      -- { "hrsh7th/cmp-copilot", after = "nvim-cmp", opt = true },
      -- { "petertriho/cmp-git", after = "nvim-cmp", opt = true },
      -- { "davidsierradz/cmp-conventionalcommits", after = "nvim-cmp", opt = true },
      -- { "mtoohey31/cmp-fish", after = "nvim-cmp", opt = true },
      -- { "David-Kunz/cmp-npm", after = "nvim-cmp", opt = true },
      -- { "kdheepak/cmp-latex-symbols", after = "nvim-cmp", opt = true },
      -- { "ray-x/cmp-treesitter", after = "nvim-cmp", opt = true },

      -- ME ME ME
      -- {
      --   "saecki/crates.nvim",
      --   after = "nvim-cmp",
      --   config = function()
      --     require('crates').setup()
      --   end,
      --   opt = true
      -- },
      config = config.cmp,
    },
  }

  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

end)
