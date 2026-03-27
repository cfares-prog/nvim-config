-- colors/cherry_blossom.lua

local M = {}

local c = {
    white        = "#E0E0E0",
    gray         = "#8C8C8C",
    pastel_pink  = "#e07cae",
    purple       = "#a17fd6",
    yellow       = "#F3D85C",
    string_green = "#7fff7f",
    bg_dark      = "#181818",
    search_bg    = "#565f72",
    search_fg    = "#f8f8f2",
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

M.setup = function()
    vim.cmd("highlight clear")
    vim.o.background = "dark"
    vim.g.colors_name = "cherry_blossom"

    -- ======================
    -- Common UI
    -- ======================
    hl("Normal",       { fg = c.white, bg = "NONE" })
    hl("Cursor",       { underline = true })
    hl("CursorColumn", { bg = c.bg_dark })
    hl("CursorLine",   { bg = c.bg_dark })
    hl("CursorLineNr", { fg = c.purple, bold = true })
    hl("LineNr",       { fg = c.gray })
    hl("SignColumn",   { fg = c.pastel_pink })

    -- ======================
    -- Search
    -- ======================
    hl("Search",     { fg = c.search_fg, bg = c.search_bg })
    hl("IncSearch",  { fg = c.search_fg, bg = c.yellow, bold = true })

    -- ======================
    -- UI Elements
    -- ======================
    hl("Visual",      { fg = "black", bg = c.search_bg })
    hl("MatchParen",  { fg = c.purple, bg = "NONE", bold = true })
    hl("NonText",     { fg = c.gray })
    hl("Whitespace",  { fg = c.gray, italic = false })

    -- ======================
    -- Popup Menu
    -- ======================
    hl("Pmenu",       { fg = c.white, bg = c.bg_dark })
    hl("PmenuSel",    { fg = c.search_fg, bg = c.search_bg, bold = true })
    hl("PmenuBorder", { fg = c.gray })

    -- ======================
    -- Syntax
    -- ======================
    hl("Comment",    { fg = c.gray, italic = false })
    hl("Constant",   { fg = c.white })
    hl("Function",   { fg = c.yellow })
    hl("Identifier", { fg = c.white })
    hl("Operator",   { fg = c.gray })
    hl("Statement",  { fg = c.pastel_pink, bold = true })
    hl("Type",       { fg = c.white, bold = true })
    hl("Keyword",    { fg = c.pastel_pink, bold = true })
    hl("String",     { fg = c.string_green, italic = false })
    hl("Include",    { fg = c.yellow })
    hl("PreProc",    { fg = c.yellow })
    hl("Delimiter",  { fg = c.purple })
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = c.purple, bold = true })

    -- ======================
    -- Diagnostics
    -- ======================
    hl("DiagnosticError", { fg = "#D87C7C" })
    hl("DiagnosticWarn",  { fg = c.yellow })
    hl("DiagnosticInfo",  { fg = c.yellow })
    hl("DiagnosticHint",  { fg = c.gray })

    -- ======================
    -- Extra Groups
    -- ======================
    hl("ColorColumn",   { bg = "#3A3F52" })
    hl("NormalFloat",   { bg = "NONE" })
    hl("Number",        { fg = c.pastel_pink })
    hl("Boolean",       { fg = c.yellow })
    hl("@variable.parameter.python", { fg = c.pastel_pink, bold = true })
end

M.setup()

return M
