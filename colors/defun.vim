" defun.vim: defined.nvim but for vim and better

" i copied this from: https://github.com/morhetz/gruvbox/blob/master/colors/gruvbox.vim
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "defun"

if !(has("termguicolors") && &termguicolors) && !has("gui_running") && &t_Co != 256
    finish
endif

" palette
let s:dark00 = "#222226"
let s:dark01 = "#333337"
let s:dark10 = "#444448"
let s:dark11 = "#555559"

let s:light00 = "#eeeeff"
let s:light01 = "#ddddee"
let s:light10 = "#ccccdd"
let s:light11 = "#bbbbcc"

let s:red = "#dd3322"
let s:yellow = "#eecc00"
let s:orange = "#ffbb66"
let s:blue = "#55bbff"
let s:cyan = "#22aa99"
let s:green = "#beedab"
let s:violet = "#99aaff"
let s:light_blue = "#aaccee"
let s:purple = "#dd88dd"
let s:grey = "#888892"

" highlight groups

" default vim groups
execute "hi Comment guifg=" . s:grey . " gui=italic"
execute "hi ColorColumn guibg=" . s:dark10
execute "hi Conceal guifg=" . s:light10
execute "hi Cursor guifg=" . s:dark01 . " guibg=" . s:light01
hi! link lCursor Cursor
hi! link CursorIM Cursor
execute "hi CursorColumn guibg=" . s:dark10
hi! link CursorLine CursorColumn
execute "hi Directory guifg=" . s:blue
execute "hi DiffAdd guifg=" . s:dark01 . " guibg=" . s:green
execute "hi DiffChange guifg=" . s:dark01 . " guibg=" . s:orange
execute "hi DiffDelete guifg=" . s:light01 . " guibg=" . s:red
execute "hi DiffText guifg=" . s:dark01 . " guibg=" . s:yellow
execute "hi EndOfBuffer guifg=" . s:blue
hi! link TermCursor Cursor
hi! link TermCursorNC Cursor
hi! link ErrorMsg DiffDelete
execute "hi VertSplit guifg=" . s:grey
hi! link Folded CursorColumn
execute "hi FoldColumn guibg=" . s:dark10
execute "hi SignColumn guibg=" . s:dark01
execute "hi IncSearch guibg=" . s:dark10
hi! link Substitue IncSearch
execute "hi LineNr guifg=" . s:light11 . " guibg=" . s:dark01
execute "hi CursorLineNr guifg=" . s:light00 . " guibg=" . s:dark01
execute "hi MatchParen guibg=" . s:dark11
execute "hi ModeMsg guifg=" . s:light10
hi! link MsgArea ModeMsg
hi! link MsgSeparator ModeMsg
hi! link MoreMsg ModeMsg
hi! link NonText EndOfBuffer
execute "hi Normal guifg=" . s:light00 . " guibg=" . s:dark00
execute "hi NormalFloat guifg=" . s:light11 . " guibg=" . s:dark00
hi! link NormalNC NormalFloat
execute "hi Pmenu guifg=" . s:light00 . " guibg=" . s:dark10
execute "hi PmenuSel guifg=" . s:light00 . " guibg=" . s:dark11
execute "hi PmenuSbar guifg=" . s:light10 . " guibg=" . s:dark10
execute "hi PmenuThumb guifg=" . s:light00
execute "hi Question guifg=" . s:green
hi! link QuickFixLine NormalNC
hi! link Search IncSearch
hi! link SpecialKey NonText
execute "hi SpellBad gui=underline"
hi! link SpellCap SpellBad
execute "hi SpellLocal guifg=" . s:light01
hi! link SpellRare SpellLocal
execute "hi StatusLine guibg=" . s:dark10
execute "hi StatusLineNC guibg=" . s:dark11
execute "hi TabLineFill guibg=" . s:dark01
execute "hi TabLineSel guibg=" . s:dark01
execute "hi Title guifg=" . s:purple
execute "hi Visual guibg=" . s:dark11
execute "hi VisualNOS guibg=" . s:dark10
hi! link WarningMsg DiffText
execute "hi WhiteSpace guifg=" . s:grey
execute "hi WildMenu guibg=" . s:dark11

" syntax groups
execute "hi Constant guifg=" . s:blue
execute "hi String guifg=" . s:green
hi! link Character String
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

execute "hi Identifier guifg=" . s:light01
execute "hi Function guifg=" . s:orange

execute "hi Statement guifg=" . s:violet
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Constant
hi! link Keyword Statement
hi! link Exception Statement

execute "hi PreProc guifg=" . s:purple
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc

execute "hi Type guifg=" . s:light_blue
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type

execute "hi Special guifg=" . s:green
hi! link SpecialChar Special
hi! link SpecialComment Special
execute "hi Debug guifg=" . s:purple

execute "hi Underlined gui=underline"
execute "hi Bold gui=bold"
execute "hi Italic gui=italic"

execute "hi Error guifg=" . s:red
execute "hi Todo guifg=" . s:light10

" nvim lsp
execute "hi DiagnosticError guifg=" . s:red . " guibg=" . s:dark01
execute "hi DiagnosticWarning guifg=" . s:orange . " guibg=" . s:dark01
execute "hi DiagnosticInfo guifg=" . s:light10 . " guibg=" . s:dark01
execute "hi DiagnosticHint guifg=" . s:yellow . " guibg=" . s:dark01

execute "hi LspDiagnosticsVirtualTextError guifg=" . s:red
execute "hi LspDiagnosticsVirtualTextWarning guifg=" . s:orange
execute "hi LspDiagnosticsVirtualTextInformation guifg=" . s:light10
execute "hi LspDiagnosticsVirtualTextHint guifg=" . s:yellow

" plugins
" wfxr/minimap.vim
execute "hi MinimapCurrentLine guifg=" . s:green
" lewis6991/gitsigns.nvim
execute "hi GitSignsAdd guifg=" . s:green . " guibg=" . s:dark01
execute "hi GitSignsChange guifg=" . s:orange . " guibg=" . s:dark01
execute "hi GitSignsDelete guifg=" . s:red . " guibg=" . s:dark01
