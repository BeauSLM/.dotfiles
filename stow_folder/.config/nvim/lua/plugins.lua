-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local config = require'config'

return require('packer').startup(function()
  -- Packer can manage itself
  	use 'wbthomason/packer.nvim'

	use 'tpope/vim-fugitive'
	use { 'junegunn/gv.vim', after = 'vim-fugitive', requires = 'vim-fugitive' }
	use { 'tpope/vim-rhubarb', after = 'vim-fugitive', requires = 'vim-fugitive' }
	use { 'shumphrey/fugitive-gitlab.vim', after = 'vim-fugitive', requires = 'vim-fugitive' }
  
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = config.treesitter,
    }
  
	use {
        'sainnhe/sonokai',
        config = config.sonokai,
    }

	use {
        'p00f/nvim-ts-rainbow',
        after = 'nvim-treesitter',
        config = config.ts_rainbow,
  }

 use {
     'numToStr/Comment.nvim',
     config = function()
         require('Comment').setup()
         -- TODO: context-commentstring
     end,
 }

    -- Post-install/update hook with call of vimscript function with argument
	use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

end)
