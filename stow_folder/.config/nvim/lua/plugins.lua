local config = require('config')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'windwp/windline.nvim',
    config = function()
      require('wlsample.evil_line')
    end
  }
  use 'neovim/nvim-lspconfig'
  use {
    'ray-x/navigator.lua',
    requires = {
      { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
      'neovim/nvim-lspconfig',
      'ray-x/lsp_signature.nvim',
      'gigablaster/rust-tools.nvim', -- TODO: go back to original when https://github.com/simrat39/rust-tools.nvim/issues/157 is fixed
      'p00f/clangd_extensions.nvim',
    },
    config = config.navigator,
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = config.null_ls,
  }
  use {
    'gigablaster/rust-tools.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'mfussenegger/nvim-dap' },
  }

  use {
    'mfussenegger/nvim-dap',
    config = config.dap,
  }
  use {
    'rcarriga/nvim-dap-ui',
    requires = 'mfussenegger/nvim-dap',
    config = config.dapui
  }
  use {
    'theHamsta/nvim-dap-virtual-text',
    requires = { 'mfussenegger/nvim-dap', 'nvim-treesitter' },
    config = function()
      require('nvim-dap-virtual-text').setup()
    end
  }

  use {
    'szw/vim-maximizer',
    config = function()
      vim.g.maximizer_set_default_mapping = 0
    end
  }

  use {
    'thePrimeagen/harpoon',
    requires = 'nvim-lua/plenary.nvim',
  }

  use 'mg979/vim-visual-multi'

  -- use {
  --   'TimUntersberger/neogit',
  --   requires = { 'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim' },
  --   config = function()
  --     require('neogit').setup {
  --       integrations = { diffview = true, },
  --     }
  --   end
  -- }
  use 'tpope/vim-fugitive'
  use { 'junegunn/gv.vim', requires = 'vim-fugitive' }
  use { 'tpope/vim-rhubarb', requires = 'vim-fugitive' }
  use { 'shumphrey/fugitive-gitlab.vim', requires = 'vim-fugitive' }
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('diffview').setup { use_icons = false, }
    end,
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

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
      require('tabout').setup({
        completion = false,
      })
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
      -- { "hrsh7th/cmp-cmdline", },
      -- { "hrsh7th/cmp-copilot", },
      -- { "petertriho/cmp-git", },
      -- { "davidsierradz/cmp-conventionalcommits", },
      { "mtoohey31/cmp-fish" },
      { "kdheepak/cmp-latex-symbols" },
      -- { "ray-x/cmp-treesitter" },

      { "David-Kunz/cmp-npm", requires = "nvim-lua/plenary.nvim",
        config = function() require('cmp-npm').setup() end, },
      { "saecki/crates.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function() require('crates').setup() end,
      },
    },
    config = config.cmp,
  }
end)
