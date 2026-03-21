-- ~/.config/nvim/colors/gruber_custom.lua

local M = {}
vim.cmd.colorscheme("gruber-darker")

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

M.setup = function()

    hl("Constant",   { fg =  "#00bfbb" })
    hl("Identifier", { fg = "#FFFFFF" })
    hl("Operator",   { fg = "#FFFFFF" })
    hl("Type",       { fg = "#ffd700", bold = true })
    hl("Keyword",    { fg = "#ffd700",  bold = true })
    hl("Include",    { fg = "#00bfbb"})
    hl("PreProc",    { fg = "#00bfbb" })
end

M.setup()

return M
