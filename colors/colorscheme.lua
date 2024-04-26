-- colors/colorscheme.lua

local colors = {
    -- content here will not be touched
    -- PATCH_OPEN
Normal = {fg = "#FFFEDB", bg = "#121212"},
NormalFloat = {link = "Normal"},
Comment = {fg = "#333638", italic = true},
Conceal = {bg = "#262626"},
Constant = {fg = "#D08458"},
CursorColumn = {},
CursorLine = {},
DiffAdd = {fg = "#FFFEDB", bg = "#2B3328"},
DiffChange = {fg = "#FFFEDB", bg = "#262636"},
DiffDelete = {fg = "#C34143", bg = "#42242B"},
DiffText = {fg = "#FFFEDB", bg = "#49443C"},
Directory = {fg = "#C1C88D"},
Error = {fg = "#BE7B6A", bold = true, undercurl = true},
ErrorMsg = {fg = "#BE7B6A", bold = true},
FoldColumn = {},
Folded = {},
Function = {fg = "#AA9AAC"},
Identifier = {fg = "#8B9698"},
LineNr = {fg = "#474A4D"},
MatchParen = {fg = "#FFFEDB", bold = true},
NonText = {fg = "#303030"},
Operator = {fg = "#DEBF7C"},
Pmenu = {fg = "#918988", bg = "#303030"},
PmenuSbar = {fg = "#918988", bg = "#262626"},
PmenuSel = {fg = "#BFBBBA", bg = "#303030", bold = true},
PmenuThumb = {fg = "#918988", bg = "#262626", reverse = true},
PreProc = {fg = "#8B9698"},
Question = {fg = "#85B34D", bold = true},
QuickFixLine = {bg = "#303030", bold = true},
Search = {bg = "#5F5958", bold = true, italic = true},
SignColumn = {},
Special = {fg = "#5E5E5E"},
SpecialChar = {fg = "#C1C88D"},
SpecialKey = {fg = "#303030"},
Statement = {fg = "#CEB67E", bold = true, italic = true},
StatusLine = {fg = "#FFFEDB", bg = "#34383C"},
String = {fg = "#A2A970"},
Structure = {fg = "#AA9AAC"},
Substitute = {fg = "#1A1A1A", bg = "#C1C88D"},
TabLine = {fg = "#A09998", bg = "#212121"},
TabLineFill = {link = "TabLine"},
TabLineSel = {fg = "#A09998", bg = "#40474F", bold = true},
Title = {fg = "#D08458", bold = true},
Todo = {fg = "#8B9698", bold = true, italic = true},
Type = {fg = "#E3D896", italic = true},
Underlined = {undercurl = true},
VertSplit = {fg = "#303030"},
Visual = {bg = "#454545"},
WarningMsg = {fg = "#BE7B6A", bold = true, italic = true},
    -- PATCH_CLOSE
    -- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd "highlight clear"
vim.cmd "set t_Co=256"
vim.cmd "let g:colors_name='cosec-twilight'"

-- apply highlight groups
for group, attrs in pairs(colors) do
    vim.api.nvim_set_hl(0, group, attrs)
end
