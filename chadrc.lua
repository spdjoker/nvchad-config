---@type ChadrcConfig 
local M = {}

M.plugins = 'custom.plugins'

M.ui = {
    -- hl_override = {
    --     NvDashAscii = {
    --         sp = "NONE",
    --         fg = "black",
    --         bg = "green",
    --     },
    -- },
    nvdash = {
        load_on_startup = true,
    },
    theme = "joker",
    -- lsp_semantic_tokens = true,
}

return M
