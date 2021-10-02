--------------init.lua---------------

-- add all other files
require("beauslm.lsp")
require("beauslm.telescope")
require("beauslm.harpoon")
require("beauslm.git-worktree")
require("beauslm.compe")
require("beauslm.treesitter")
require("beauslm.autopairs")
require("beauslm.refactoring")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

-- symbols outline

local opts = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = true,
    position = 'right',
}

require('symbols-outline').setup(opts)

