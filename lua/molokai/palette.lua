local M = {
	bg = "#1B1D1E", -- 背景
	fg = "#F8F8F2",

	-- 语法基础色
	purple = "#AE81FF", -- Boolean, Number, Constant, Float
	yellow = "#E6DB74", -- Character, String, Label, ModeMsg
	pink = "#F92672", -- Conditional, Keyword, Operator, Repeat, Statement
	green = "#A6E22E", -- Directory, Exception, Function, PreProc, Special
	orange = "#FD971F", -- Identifier, StorageClass, CursorLineNr
	blue = "#66D9EF", -- Define, Question, Structure, Type, Typedef
	comment = "#7E8E91", -- Comment
	gray = "#808080", -- Ignore, Underlined, VertSplit

	-- UI 界面色
	cursorline = "#293739",
	colorcolumn = "#232526",
	linenr_bg = "#232526",
	linenr_fg = "#465457",
	nontext = "#465457",

	-- 菜单与匹配
	pmenu_bg = "#000000",
	pmenu_sel = "#808080",
	match_bg = "#FD971F",
	search_bg = "#FFE792",

	-- Diff 颜色
	diff_add_bg = "#13354A",
	diff_change_fg = "#89807D",
	diff_change_bg = "#4C4745",
	diff_delete_fg = "#960050",
	diff_delete_bg = "#1E0010",
}
return M

