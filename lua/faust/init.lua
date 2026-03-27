-- Custom gruber for lualine
local gruber = {
  normal = {
    a = { bg = "#ffdd33", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3A55", fg = "#e4e4ef" },
    c = { bg = "#3f3c4f", fg = "#e4e4ef" },
  },
  insert = {
    a = { bg = "#6fa87a", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3A55", fg = "#e4e4ef" },
  },
  visual = {
    a = { bg = "#9e95c7", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3A55", fg = "#e4e4ef" },
  },
  replace = {
    a = { bg = "#f43841", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3A55", fg = "#e4e4ef" },
  },
  inactive = {
    a = { bg = "#181818", fg = "#52494e" },
    b = { bg = "#3c3A55", fg = "#52494e" },
    c = { bg = "#181818", fg = "#52494e" },
  },
}


require('lualine').setup {
  options = {
    theme = gruber,
    section_separators = '',
    component_separators = '',
  }
}

-- slight gruber darker changes
vim.cmd([[
    " ~/.config/nvim/after/colors/gruber-darker.vim
    if exists("g:colors_name")
      " Amber for constants
      let s:amber = "#FFBF00"
      highlight Constant guifg=s:amber ctermfg=214

      let s:datatype = "#FFD700"  " classic gold/yellow
      highlight Type guifg=s:datatype ctermfg=220
    endif
    ]])

require('lualine').setup {
  options = {
    theme = gruber,
    section_separators = '',
    component_separators = '',
  }
}

-- slight gruber darker changes
vim.cmd([[
    " ~/.config/nvim/after/colors/gruber-darker.vim
    if exists("g:colors_name")
      " Amber for constants
      let s:amber = "#FFBF00"
      highlight Constant guifg=s:amber ctermfg=214

      let s:datatype = "#FFD700"  " classic gold/yellow
      highlight Type guifg=s:datatype ctermfg=220
    endif
    ]])

vim.api.nvim_set_hl(0,"Constant",   { fg =  "#ffd700" })
vim.api.nvim_set_hl(0,"Identifier", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0,"Operator",   { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0,"Type",       { fg = "#ffd700", bold = true })
vim.api.nvim_set_hl(0,"Keyword",    { fg = "#ffd700",  bold = true })
vim.api.nvim_set_hl(0,"Include",    { fg = "#00bfbb"})
vim.api.nvim_set_hl(0,"PreProc",    { fg = "#00bfbb" })
vim.api.nvim_set_hl(0, "@variable", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "@field", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#FFFFFF" })
