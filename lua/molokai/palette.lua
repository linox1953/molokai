local M = {
  bg        = "#272822", -- molokai_original 背景
  fg        = "#F8F8F2",

  -- 语法基础色
  purple    = "#AE81FF", -- Boolean, Number, Constant, Float
  yellow    = "#E6DB74", -- Character, String, Label, ModeMsg
  pink      = "#F92672", -- Conditional, Keyword, Operator, Repeat, Statement
  green     = "#A6E22E", -- Directory, Exception, Function, PreProc, Special
  orange    = "#FD971F", -- Identifier, StorageClass, CursorLineNr
  blue      = "#66D9EF", -- Define, Question, Structure, Type, Typedef
  comment   = "#75715E", -- Comment
  gray      = "#808080", -- Ignore, Underlined, VertSplit

  -- UI 界面色
  cursorline = "#3E3D32",
  colorcolumn = "#3B3A32",
  linenr_bg   = "#3B3A32",
  linenr_fg   = "#BCBCBC",
  nontext     = "#75715E",

  -- 菜单与匹配
  pmenu_bg   = "#000000",
  pmenu_sel  = "#808080",
  match_bg   = "#FD971F",
  search_bg  = "#FFE792",

  -- Diff 颜色
  diff_add_bg    = "#13354A",
  diff_change_fg = "#89807D",
  diff_change_bg = "#4C4745",
  diff_delete_fg = "#960050",
  diff_delete_bg = "#1E0010",
}
return M