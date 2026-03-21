-- Custom gruber for lualine
local gruber = {
  normal = {
    a = { bg = "#ffdd33", fg = "#181818", gui = "bold" },
    b = { bg = "#484848", fg = "#e4e4ef" },
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

