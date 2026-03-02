-- colors/cherry_blossom.lua

local M = {}

local c = {
    white        = "#F2EFAE",
    purple       = "#C77BFF",
    gray         = "#9AA0A6",
    pastel_pink  = "#EB75EF",
    light_blue   = "#5ED0F4",
    search_bg    = "#C7DDF2",
    search_fg    = "#1E1E2E",
    yellow       = "#FAD219",
    string_green = "#34DD32",
    bg_dark      = "#1F2430",
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

M.setup = function()

    vim.cmd("highlight clear")
    vim.o.background = "dark"
    vim.g.colors_name = "cherry_blossom"

    -- ======================
    --  UI
    -- ======================
    hl("Normal",       { fg = c.white, bg = "NONE" })
    hl("Cursor",       { underline = true })
    hl("CursorColumn", { bg = c.bg_dark })
    hl("CursorLine",   { bg = c.bg_dark })
    hl("CursorLineNr", { fg = c.white, bold = true })
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
    hl("MatchParen",  { fg = c.purple, bold = true })
    hl("NonText",     { fg = c.gray })
    hl("Whitespace",  { fg = c.gray, italic = true })

    -- ======================
    -- Popup Menu
    -- ======================
    hl("Pmenu",       { fg = "#DADADA", bg = c.bg_dark })
    hl("PmenuSel",    { fg = c.search_fg, bg = c.search_bg, bold = true })
    hl("PmenuBorder", { fg = "#B6CCE8" })

    -- ======================
    -- Syntax
    -- ======================
    hl("Comment",    { fg = c.gray, italic = true })
    hl("Constant",   { fg = c.search_bg })
    hl("Function",   { fg = c.white })
    hl("Identifier", { fg = c.white })
    hl("Operator",   { fg = c.gray })
    hl("Statement",  { fg = c.pastel_pink, bold = true })
    hl("Type",       { fg = c.pastel_pink, bold = true })
    hl("Keyword",    { fg = c.pastel_pink, bold = true })
    hl("String",     { fg = c.string_green, italic = true })
    hl("Include",    { fg = c.yellow })
    hl("PreProc",    { fg = c.yellow })
    hl("Delimiter",  { fg = c.light_blue })

    -- ======================
    -- Diagnostics
    -- ======================
    hl("DiagnosticError",   { fg = "#D87C7C" })
    hl("DiagnosticWarn",    { fg = c.yellow })
    hl("DiagnosticInfo",    { fg = "#B7C8A6" })
    hl("DiagnosticHint",    { fg = "#B6CCE8" })

    -- ======================
    -- Extra Groups
    -- ======================
    hl("NormalFloat", { bg = "NONE" })
    hl("Number",      { fg = c.light_blue })
    hl("Boolean",     { fg = c.light_blue })
    hl("@variable.parameter.python", { fg = c.pastel_pink, bold = true })
end

M.setup()

return M
