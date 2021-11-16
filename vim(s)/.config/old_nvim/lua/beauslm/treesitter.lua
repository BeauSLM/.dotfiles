------------treesitter.lua-------------

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "bash",
      "c",
      "c_sharp",
      "cmake",
      "comment",
      "cpp",
      "css",
      "fish",
      "html",
      "java",
      "javascript",
      "json",
      "lua",
      "python",
      "query",
      "regex",
      "rust",
      "toml",
      "typescript",
      "yaml",
  },
  -- indent {
  --     enable = true
  -- },
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  incremental_selection = {
      enable = true
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },
  rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = 1000,
  }
}
