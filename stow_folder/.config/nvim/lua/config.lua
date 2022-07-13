local config = {}
function config.treesitter()
	require 'nvim-treesitter.configs'.setup {
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
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

function config.lspconfig()
	local opts = { noremap = true, silent = true }
	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
	vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

	-- Use an on_attach function to only map the following keys
	-- after the language server attaches to the current buffer
	local on_attach = function(client, bufnr)
		-- Enable completion triggered by <c-x><c-o>
		vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

		-- Mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		-- TODO: look at :h vim.lsp.buf for other bindings
		local bufopts = { noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set('n', 'gy', vim.lsp.buf.declaration, bufopts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
		vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
		vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
		vim.keymap.set('n', '<space>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, bufopts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
		vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
		vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
	end

	local generic_servers = {
		'bashls',
		'clangd',
		'cmake',
		'cssls',
		'cssmodules_ls',
		'eslint',
		'gopls',
		'html',
		'jsonls',
		'pylsp', -- change this?
		'rust_analyzer',
		'sumneko_lua',
		'tailwindcss',
		'texlab',
		'tsserver',
		'vimls',
		'yamlls',
		'zls',
	}

	-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
	-- local capabilities = vim.lsp.protocol.make_client_capabilities()
	-- capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities) -- XXX: this needs to be in cmp_nvim_lsp config!

	for _, server in pairs(generic_servers) do
		require('lspconfig')[server].setup {
			on_attach = on_attach,
			capabilities = capabilities,
		}
	end
end

function config.cmp()
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
