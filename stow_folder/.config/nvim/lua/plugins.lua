local config = require('config')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'itchyny/lightline.vim'
  use 'neovim/nvim-lspconfig'
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
    'p00f/nvim-ts-rainbow',
    requires = 'nvim-treesitter',
    config = config.ts_rainbow,
  }

  use {
    'abecodes/tabout.nvim',
    requires = 'nvim-treesitter',
    config = function()
      require('tabout').setup()
    end
  }

  -- do I need this?
  -- use {
  --   'windwp/nvim-ts-autotag',
  --   requires = 'nvim-treesitter',
  --   config = function()
  --     require('nvim-ts-autotag').setup()
  --   end,
  -- }

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
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      requires = 'nvim-treesitter',
      config = function()
        require('nvim-treesitter.configs').setup { context_commentstring { enable = true, enable_autocmd = false, } }
      end
    },
    config = config.comment,
  }

  use {
    'L3MON4D3/LuaSnip',
    requires = 'rafamadriz/friendly-snippets',
    config = config.luasnip,
  }

  use 'windwp/nvim-autopairs'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-buffer" },
      -- { "hrsh7th/cmp-nvim-lsp-signature-help" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-cmdline", },
      -- { "hrsh7th/cmp-copilot", },
      -- { "petertriho/cmp-git", },
      { "davidsierradz/cmp-conventionalcommits", },
      { "mtoohey31/cmp-fish" },
      { "kdheepak/cmp-latex-symbols" },
      { "ray-x/cmp-treesitter" },

      { "David-Kunz/cmp-npm", requires = "nvim-lua/plenary.nvim",
        config = function() require('cmp-npm').setup() end, },
      { "saecki/crates.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function() require('crates').setup() end,
      },
    },
    config = config.cmp,
  }

  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

end)
