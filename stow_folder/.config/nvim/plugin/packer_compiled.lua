-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/beaum/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/beaum/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/beaum/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/beaum/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/beaum/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nß\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010€6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2€'\2\b\0X\3\1€'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\a€6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16€9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5€9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6€6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["clangd_extensions.nvim"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/clangd_extensions.nvim",
    url = "https://github.com/p00f/clangd_extensions.nvim"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/beaum/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  firenvim = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fugitive-gitlab.vim"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/fugitive-gitlab.vim",
    url = "https://github.com/shumphrey/fugitive-gitlab.vim"
  },
  ["gruvbox-material"] = {
    config = { "\27LJ\2\nÀ\4\0\0\3\0\14\0)6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0)\1\0\0=\1\4\0006\0\0\0009\0\3\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\3\0)\1\1\0=\1\a\0006\0\0\0009\0\3\0)\1\1\0=\1\b\0006\0\0\0009\0\3\0)\1\1\0=\1\t\0006\0\0\0009\0\3\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\1K\0\1\0\26doautocmd ColorScheme!colorscheme gruvbox-material\roriginal\29gruvbox_material_palette!gruvbox_material_enable_bold'gruvbox_material_improved_warnings&gruvbox_material_improved_strings‚\1if exists('+termguicolors')\n      let &t_8f = \"\\<Esc>[38;2;%lu;%lu;%lum\"\n      let &t_8b = \"\\<Esc>[48;2;%lu;%lu;%lum\"\n  endif#gruvbox_material_enable_italic&gruvbox_material_invert_selection\6g\24set background=dark\bcmd\bvim\0" },
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["guihua.lua"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/guihua.lua",
    url = "https://github.com/ray-x/guihua.lua"
  },
  ["gv.vim"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/gv.vim",
    url = "https://github.com/junegunn/gv.vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["navigator.lua"] = {
    config = { "\27LJ\2\ne\0\2\5\0\6\0\t6\2\0\0'\4\1\0B\2\2\0029\2\2\0025\4\3\0=\0\4\4=\1\5\4B\2\2\1K\0\1\0\nbufnr\vclient\1\0\0\nsetup navigator.lspclient.mapping\frequiree\0\2\5\0\6\0\t6\2\0\0'\4\1\0B\2\2\0029\2\2\0025\4\3\0=\0\4\4=\1\5\4B\2\2\1K\0\1\0\nbufnr\vclient\1\0\0\nsetup navigator.lspclient.mapping\frequire¯\3\1\0\6\0\23\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0026\3\0\0'\5\n\0B\3\2\0029\3\2\0035\5\v\0B\3\2\2=\3\f\2B\0\2\0016\0\0\0'\2\r\0B\0\2\0029\0\2\0005\2\17\0005\3\15\0003\4\14\0=\4\16\3=\3\18\2B\0\2\0016\0\0\0'\2\19\0B\0\2\0029\0\2\0005\2\22\0005\3\21\0003\4\20\0=\4\16\3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\0\0\22clangd_extensions\vserver\1\0\0\14on_attach\1\0\0\0\15rust-tools\23signature_help_cfg\1\0\1\19always_trigger\2\18lsp_signature\blsp\1\0\1\23lsp_signature_help\2\16disable_lsp\1\3\0\0\18rust_analyzer\vclangd\fservers\1\0\1\19format_on_save\1\1\4\0\0\18cssmodules_ls\veslint\16tailwindcss\nsetup\14navigator\frequire\0" },
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/navigator.lua",
    url = "https://github.com/ray-x/navigator.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-rainbow" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\venable\2\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-maximizer"] = {
    config = { '\27LJ\2\n?\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0"maximizer_set_default_mapping\6g\bvim\0' },
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/beaum/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nö\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\21ensure_installed\1#\0\0\6c\ncmake\fcomment\bcpp\bcss\tfish\tglsl\ago\thelp\thtml\thttp\tjava\15javascript\tjson\njson5\nlatex\tllvm\blua\tmake\rmarkdown\20markdown_inline\nninja\vprisma\vpython\nregex\trust\bsql\ftodotxt\ttoml\btsx\15typescript\bvim\tyaml\bzig\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-maximizer
time([[Config for vim-maximizer]], true)
try_loadstring('\27LJ\2\n?\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0"maximizer_set_default_mapping\6g\bvim\0', "config", "vim-maximizer")
time([[Config for vim-maximizer]], false)
-- Config for: navigator.lua
time([[Config for navigator.lua]], true)
try_loadstring("\27LJ\2\ne\0\2\5\0\6\0\t6\2\0\0'\4\1\0B\2\2\0029\2\2\0025\4\3\0=\0\4\4=\1\5\4B\2\2\1K\0\1\0\nbufnr\vclient\1\0\0\nsetup navigator.lspclient.mapping\frequiree\0\2\5\0\6\0\t6\2\0\0'\4\1\0B\2\2\0029\2\2\0025\4\3\0=\0\4\4=\1\5\4B\2\2\1K\0\1\0\nbufnr\vclient\1\0\0\nsetup navigator.lspclient.mapping\frequire¯\3\1\0\6\0\23\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0026\3\0\0'\5\n\0B\3\2\0029\3\2\0035\5\v\0B\3\2\2=\3\f\2B\0\2\0016\0\0\0'\2\r\0B\0\2\0029\0\2\0005\2\17\0005\3\15\0003\4\14\0=\4\16\3=\3\18\2B\0\2\0016\0\0\0'\2\19\0B\0\2\0029\0\2\0005\2\22\0005\3\21\0003\4\20\0=\4\16\3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\0\0\22clangd_extensions\vserver\1\0\0\14on_attach\1\0\0\0\15rust-tools\23signature_help_cfg\1\0\1\19always_trigger\2\18lsp_signature\blsp\1\0\1\23lsp_signature_help\2\16disable_lsp\1\3\0\0\18rust_analyzer\vclangd\fservers\1\0\1\19format_on_save\1\1\4\0\0\18cssmodules_ls\veslint\16tailwindcss\nsetup\14navigator\frequire\0", "config", "navigator.lua")
time([[Config for navigator.lua]], false)
-- Config for: gruvbox-material
time([[Config for gruvbox-material]], true)
try_loadstring("\27LJ\2\nÀ\4\0\0\3\0\14\0)6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0)\1\0\0=\1\4\0006\0\0\0009\0\3\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\3\0)\1\1\0=\1\a\0006\0\0\0009\0\3\0)\1\1\0=\1\b\0006\0\0\0009\0\3\0)\1\1\0=\1\t\0006\0\0\0009\0\3\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\1K\0\1\0\26doautocmd ColorScheme!colorscheme gruvbox-material\roriginal\29gruvbox_material_palette!gruvbox_material_enable_bold'gruvbox_material_improved_warnings&gruvbox_material_improved_strings‚\1if exists('+termguicolors')\n      let &t_8f = \"\\<Esc>[38;2;%lu;%lu;%lum\"\n      let &t_8b = \"\\<Esc>[48;2;%lu;%lu;%lum\"\n  endif#gruvbox_material_enable_italic&gruvbox_material_invert_selection\6g\24set background=dark\bcmd\bvim\0", "config", "gruvbox-material")
time([[Config for gruvbox-material]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nß\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010€6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2€'\2\b\0X\3\1€'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\a€6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16€9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5€9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6€6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd nvim-ts-rainbow ]]

-- Config for: nvim-ts-rainbow
try_loadstring("\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\venable\2\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
