-- Custom gruber for lualine
local gruber = {
  normal = {
    a = { bg = "#ffdd33", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3836", fg = "#e4e4ef" },
    c = { bg = "#282828", fg = "#e4e4ef" },
  },
  insert = {
    a = { bg = "#6fa87a", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3836", fg = "#e4e4ef" },
  },
  visual = {
    a = { bg = "#9e95c7", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3836", fg = "#e4e4ef" },
  },
  replace = {
    a = { bg = "#f43841", fg = "#181818", gui = "bold" },
    b = { bg = "#3c3836", fg = "#e4e4ef" },
  },
  inactive = {
    a = { bg = "#181818", fg = "#52494e" },
    b = { bg = "#181818", fg = "#52494e" },
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
    theme = cherry_blossom,
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
