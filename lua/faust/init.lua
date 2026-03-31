-- Custom gruber for lualine
local gruber_darker = {
  bg       = '#181818',
  fg       = '#e4e4ef',
  yellow   = '#ffdd33',
  quartz   = '#95a99f',
  brown    = '#cc8c3c',
  black    = '#282828',
  white    = '#f5f5f5',
  red      = '#ff5a5a',
}

local gruber = {
  normal = {
    a = { fg = gruber_darker.bg, bg = gruber_darker.yellow, gui = 'bold' },
    b = { fg = gruber_darker.fg, bg = gruber_darker.black },
    c = { fg = gruber_darker.fg, bg = gruber_darker.bg },
  },
  insert = {
    a = { fg = gruber_darker.bg, bg = gruber_darker.quartz, gui = 'bold' },
    b = { fg = gruber_darker.fg, bg = gruber_darker.black },
  },
  visual = {
    a = { fg = gruber_darker.bg, bg = gruber_darker.brown, gui = 'bold' },
    b = { fg = gruber_darker.fg, bg = gruber_darker.black },
  },
  replace = {
    a = { fg = gruber_darker.bg, bg = gruber_darker.red, gui = 'bold' },
    b = { fg = gruber_darker.fg, bg = gruber_darker.black },
  },
  inactive = {
    a = { fg = gruber_darker.quartz, bg = gruber_darker.bg },
    b = { fg = gruber_darker.quartz, bg = gruber_darker.bg },
    c = { fg = gruber_darker.quartz, bg = gruber_darker.bg },
  },
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
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
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

