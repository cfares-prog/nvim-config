-- colors/cherry_blossom.lua
-- A Lua port of your Vimscript scheme, original name: Cherry Blossom

local M = {}

-- Main palette
local c = {
    white        = "#DADADA",
    gray         = "#9AA0A6",
    pastel_pink  = "#EB9BEF",
    light_blue   = "#7FDFFF",
    search_bg    = "#C7DDF2",
    search_fg    = "#1E1E2E",
    yellow       = "#FFF0AF",
    string_green = "#34DD32",
    bg_dark      = "#1F2430",
    purple       = "#FB55AA"
}

-- helper to make highlights concise
local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Apply highlight groups
M.setup = function()
    -- Clear defaults
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
    hl("LineNr",       { fg = c.gray})
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
    hl("MatchParen",  { fg = c.purple, bg = "NONE" , bold = true })
    hl("NonText",     { fg = c.gray })
    hl("Whitespace",  { fg = c.gray, italic = false })

    -- ======================
    -- Popup Menu
    -- ======================
    hl("Pmenu",       { fg = "#DADADA", bg = c.bg_dark })
    hl("PmenuSel",    { fg = c.search_fg, bg = c.search_bg, bold = true })
    hl("PmenuBorder", { fg = "#B6CCE8" })

    -- ======================
    -- Syntax
    -- ======================
    hl("Comment",    { fg = c.gray, italic = false })
    hl("Constant",   { fg = c.white })
    hl("Function",   { fg = c.yellow })
    hl("Identifier", { fg = c.white })
    hl("Operator",   { fg = c.gray })
    hl("Statement",  { fg = c.pastel_pink, bold = true })
    hl("Type",       { fg = c.pastel_pink, bold = true })
    hl("Keyword",    { fg = c.pastel_pink, bold = true })
    hl("String",     { fg = c.string_green, italic = false })
    hl("Include",    { fg = c.yellow })
    hl("PreProc",    { fg = c.yellow })
    hl("Delimiter",  { fg = c.light_blue })
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#C77BFF", bold = true })
    -- ======================
    -- Diagnostics
    -- ======================
    hl("DiagnosticError",   { fg = "#D87C7C" })
    hl("DiagnosticWarn",    { fg = c.yellow })
    hl("DiagnosticInfo",    { fg = c.yellow })
    hl("DiagnosticHint",    { fg = "#B6CCE8" })

    -- ======================
    -- Extra Groups
    -- ======================
    hl("ColorColumn", { bg = "#3A3F52" })
    hl("NormalFloat", { bg = "NONE" })
    hl("Number",      { fg = c.light_blue })
    hl("Boolean",     { fg = c.light_blue })
    hl("@variable.parameter.python", { fg = c.pastel_pink, bold = true })
end

-- Run the setup
M.setup()

return M
