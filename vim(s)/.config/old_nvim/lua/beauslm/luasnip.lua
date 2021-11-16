--------luasnip.lua--------

local snippets_paths = function()
    local plugins = { "friendly-snippets" }
    local paths = {}
    local path
    local root_path = vim.fn.stdpath 'data' .. '/plugged/'
    for _, plug in ipairs(plugins) do
        path = root_path .. plug
        if vim.fn.isdirectory(path) ~= 0 then
            table.insert(paths, path)
        end
    end
    return paths
end

-- load snippets from vscode, however friendly-snippets likely provides (nearly) all of these already
--[[
   [ require("luasnip.loaders.from_vscode").load({
   [     include = {
   [           "bash",
   [           "c",
   [           "cpp",
   [           "css",
   [           "html",
   [           -- "java",
   [           "javascript",
   [           "json",
   [           "lua",
   [           "python",
   [           -- "rust",
   [           "toml",
   [           "typescript",
   [           "yaml",
   [     }
   [ })
   ]]

require("luasnip.loaders.from_vscode").lazy_load({
    paths = snippets_paths(),
    include = nil,  -- Load all languages
    exclude = {}
})
