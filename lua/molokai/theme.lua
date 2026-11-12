local p = require("molokai.palette")

local M = {}

function M.setup()
  -- 清理默认高亮
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.g.colors_name = "molokai"
  vim.o.background = "dark"
  vim.o.termguicolors = true

  -- 辅助函数
  local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- 原版 Vimscript 逐一翻译（基础高亮）
  hl("Normal", { fg = p.fg, bg = p.bg })
  hl("Cursor", { fg = "#000000", bg = "#F8F8F0" })
  hl("Comment", { fg = p.comment })
  hl("Constant", { fg = p.purple, bold = true })
  hl("String", { fg = p.yellow })
  hl("Character", { fg = p.yellow })
  hl("Number", { fg = p.purple })
  hl("Boolean", { fg = p.purple })
  hl("Float", { fg = p.purple })
  hl("Identifier", { fg = p.orange })
  hl("Function", { fg = p.green })
  hl("Statement", { fg = p.pink, bold = true })
  hl("Conditional", { fg = p.pink, bold = true })
  hl("Repeat", { fg = p.pink, bold = true })
  hl("Label", { fg = p.yellow })
  hl("Operator", { fg = p.pink })
  hl("Keyword", { fg = p.pink, bold = true })
  hl("Exception", { fg = p.green, bold = true })
  hl("PreProc", { fg = p.green })
  hl("Include", { fg = p.green })
  hl("Define", { fg = p.blue })
  hl("Macro", { fg = "#C4BE89", italic = true })
  hl("PreCondit", { fg = p.green, bold = true })
  hl("Type", { fg = p.blue })
  hl("StorageClass", { fg = p.orange, italic = true })
  hl("Structure", { fg = p.blue })
  hl("Typedef", { fg = p.blue })
  hl("Special", { fg = p.blue, italic = true })
  hl("SpecialChar", { fg = p.pink, bold = true })
  hl("Tag", { fg = p.pink, italic = true })
  hl("Delimiter", { fg = "#8F8F8F" })
  hl("SpecialComment", { fg = "#7E8E91", bold = true })
  hl("Debug", { fg = "#BCA3A3", bold = true })
  hl("Underlined", { fg = p.gray, underline = true })
  hl("Ignore", { fg = p.gray })
  hl("Error", { fg = p.yellow, bg = "#1E0010" })
  hl("Todo", { fg = "#FFFFFF", bg = p.bg, bold = true })

  --  原版 UI 翻译 (molokai_original = 1)
  hl("CursorLine", { bg = p.cursorline })
  hl("CursorColumn", { bg = p.cursorline })
  hl("CursorLineNr", { fg = p.orange })
  hl("ColorColumn", { bg = p.colorcolumn })
  hl("LineNr", { fg = p.linenr_fg, bg = p.linenr_bg })
  hl("NonText", { fg = p.nontext })
  hl("SpecialKey", { fg = p.nontext })

  hl("Visual", { bg = "#403D3D" })
  hl("VisualNOS", { bg = "#403D3D" })
  hl("Search", { fg = "#000000", bg = p.search_bg })
  hl("IncSearch", { fg = "#C4BE89", bg = "#000000" })
  hl("MatchParen", { fg = "#000000", bg = p.match_bg, bold = true })

  hl("ErrorMsg", { fg = p.pink, bg = "#232526", bold = true })
  hl("WarningMsg", { fg = "#FFFFFF", bg = "#333333", bold = true })
  hl("ModeMsg", { fg = p.yellow })
  hl("MoreMsg", { fg = p.yellow })
  hl("Question", { fg = p.blue })
  hl("Title", { fg = "#ef5939" })

  hl("Directory", { fg = p.green, bold = true })
  hl("VertSplit", { fg = p.gray, bg = "#080808", bold = true })
  hl("Folded", { fg = "#465457", bg = "#000000" })
  hl("FoldColumn", { fg = "#465457", bg = "#000000" })
  hl("SignColumn", { fg = p.green, bg = "#232526" })
  
  hl("StatusLine", { fg = "#455354", bg = p.fg })
  hl("StatusLineNC", { fg = p.gray, bg = "#080808" })
  hl("TabLine", { fg = p.gray, bg = "#1B1D1E" })
  hl("TabLineFill", { fg = "#1B1D1E", bg = "#1B1D1E" })

  hl("Pmenu", { fg = p.blue, bg = p.pmenu_bg })
  hl("PmenuSel", { bg = p.pmenu_sel })
  hl("PmenuSbar", { bg = "#080808" })
  hl("PmenuThumb", { fg = p.blue })
  hl("WildMenu", { fg = p.blue, bg = "#000000" })

  hl("DiffAdd", { bg = p.diff_add_bg })
  hl("DiffChange", { fg = p.diff_change_fg, bg = p.diff_change_bg })
  hl("DiffDelete", { fg = p.diff_delete_fg, bg = p.diff_delete_bg })
  hl("DiffText", { bg = p.diff_change_bg, italic = true, bold = true })

  --  原版没有的现代组件 (映射到原版颜色)
  -- 浮动窗口（LazyVim 经常用）
  hl("NormalFloat", { fg = p.fg, bg = p.bg })
  hl("FloatBorder", { fg = p.green, bg = p.bg })
  hl("WinSeparator", { fg = p.gray, bg = p.bg })

  -- 诊断提示
  hl("DiagnosticError", { fg = p.pink })
  hl("DiagnosticWarn", { fg = p.orange })
  hl("DiagnosticInfo", { fg = p.blue })
  hl("DiagnosticHint", { fg = p.comment })

  -- Treesitter 语法映射 (把新语法挂载到老颜色)
  local ts = {
    ["@variable"] = { fg = p.fg },
    ["@variable.parameter"] = { fg = p.orange },
    ["@variable.builtin"] = { fg = p.purple, italic = true },
    ["@function"] = { fg = p.green },
    ["@function.call"] = { fg = p.green },
    ["@function.builtin"] = { fg = p.blue },
    ["@keyword"] = { fg = p.pink, bold = true },
    ["@keyword.function"] = { fg = p.pink, bold = true },
    ["@keyword.return"] = { fg = p.pink, bold = true },
    ["@conditional"] = { fg = p.pink, bold = true },
    ["@repeat"] = { fg = p.pink, bold = true },
    ["@string"] = { fg = p.yellow },
    ["@string.escape"] = { fg = p.pink, bold = true },
    ["@number"] = { fg = p.purple },
    ["@boolean"] = { fg = p.purple },
    ["@type"] = { fg = p.blue },
    ["@type.builtin"] = { fg = p.blue, italic = true },
    ["@constructor"] = { fg = p.blue },
    ["@constant"] = { fg = p.purple },
    ["@comment"] = { fg = p.comment },
    ["@operator"] = { fg = p.pink },
    ["@punctuation.bracket"] = { fg = p.fg },
    ["@punctuation.delimiter"] = { fg = p.pink },
    ["@property"] = { fg = p.blue },
    ["@namespace"] = { fg = p.blue },
  }

  for group, opts in pairs(ts) do
    hl(group, opts)
  end

  -- LSP 语义高亮映射
  local lsp = {
    ["@lsp.type.class"] = { fg = p.green },
    ["@lsp.type.function"] = { fg = p.green },
    ["@lsp.type.method"] = { fg = p.green },
    ["@lsp.type.variable"] = { fg = p.fg },
    ["@lsp.type.property"] = { fg = p.blue },
    ["@lsp.type.parameter"] = { fg = p.orange },
  }

  for group, opts in pairs(lsp) do
    hl(group, opts)
  end
end

return M