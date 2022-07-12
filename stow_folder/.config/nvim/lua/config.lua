local config = {}

function config.sonokai()
  local opt = {"andromeda", "default", "andromeda", "shusia", "maia", "atlantis", "espresso"}
  local v = opt[math.random(1, #opt)]
  vim.g.sonokai_style = v
  vim.g.sonokai_enable_italic = 1
  vim.g.sonokai_diagnostic_virtual_text = 'colored'
  vim.g.sonokai_disable_italic_comment = 1
  vim.g.sonokai_current_word = 'underline'
  vim.cmd([[colorscheme sonokai]])
  vim.cmd([[hi CurrentWord guifg=#E3F467 guibg=#332248 gui=Bold,undercurl]])
  vim.cmd([[hi TSKeyword gui=Bold]])
end

function config.treesitter()
	require'nvim-treesitter.configs'.setup {
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true},
	}
end

function config.ts_rainbow()
	require'nvim-treesitter.configs'.setup {
		rainbow = {
			enable = true,
			extended_mode = true,
		}
	}
end

return config
