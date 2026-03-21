-- Custom gruber for lualine
local cherry_blossom = {
  normal = {
    a = { fg = "#1F2430", bg = "#7FDF7D", gui = "bold" },
    b = { fg = "#DADADA", bg = "#3A3F52" },
    c = { fg = "#DADADA", bg = "#3A3F52" },
  },
  insert = {
    a = { fg = "#1F2430", bg = "#7FDFFF", gui = "bold" }, -- light blue
    b = { fg = "#DADADA", bg = "#1F2430" },
    c = { fg = "#DADADA", bg = "#1F2430" },
  },
  visual = {
    a = { fg = "#1F2430", bg = "#EB9BEF", gui = "bold" }, -- pastel pink
    b = { fg = "#DADADA", bg = "#1F2430" },
    c = { fg = "#DADADA", bg = "#1F2430" },
  },
  replace = {
    a = { fg = "#1F2430", bg = "#FB55AA", gui = "bold" }, -- purple
    b = { fg = "#DADADA", bg = "#1F2430" },
    c = { fg = "#DADADA", bg = "#1F2430" },
  },
  command = {
    a = { fg = "#1F2430", bg = "#FFF0AF", gui = "bold" }, -- yellow
    b = { fg = "#DADADA", bg = "#1F2430" },
    c = { fg = "#DADADA", bg = "#1F2430" },
  },
  inactive = {
    a = { fg = "#9AA0A6", bg = "#1F2430", gui = "bold" },  -- gray
    b = { fg = "#9AA0A6", bg = "#1F2430" },
    c = { fg = "#9AA0A6", bg = "#1F2430" },
  },
}


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
