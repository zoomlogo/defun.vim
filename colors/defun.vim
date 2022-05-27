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
let s:green = "#aaff88"
let s:violet = "#99aaff"
let s:light_blue = "#aaccee"
let s:purple = "#dd88dd"
let s:grey = "#888892"

" highlight the groups
execute "hi Comment guifg=" . s:grey . " gui=italic"
execute "hi ColorColumn guibg=" . s:dark10
execute "hi Conceal guifg=" . s:light10
execute "hi Cursor guifg=" . s:dark01 . " guibg=" . s:light01
execute "hi CursorColumn guibg=" . s:dark10
execute "hi Directory guifg=" . s:blue
execute "hi DiffAdd guifg=" . s:dark01 . " guibg=" . s:green
execute "hi DiffChange guifg=" . s:dark01 . " guibg=" . s:orange
execute "hi DiffDelete guifg=" . s:light01 . " guibg=" . s:red
execute "hi DiffText guifg=" . s:dark01 . " guibg=" . s:yellow
execute "hi EndOfBuffer guifg=" . s:blue
execute "hi VertSplit guifg=" . s:grey
execute "hi FoldColumn guibg=" . s:dark10
execute "hi SignColumn guibg=" . s:dark01
execute "hi IncSearch guibg=" . s:dark10
execute "hi LineNr guifg=" . s:light11 . " guibg=" . s:dark01
execute "hi CursorLineNr guifg=" . s:light00 . " guibg=" . s:dark01
execute "hi MatchParen guibg=" . s:dark11
execute "hi ModeMsg guifg=" . s:light10
execute "hi Normal guifg=" . s:light00 . " guibg=" . s:dark00
execute "hi NormalFloat guifg=" . s:light11 . " guibg=" . s:dark00
execute "hi Pmenu guifg=" . s:light00 . " guibg=" . s:dark10
execute "hi PmenuSel guifg=" . s:light00 . " guibg=" . s:dark11
execute "hi PmenuSbar guifg=" . s:light10 . " guibg=" . s:dark10
execute "hi PmenuThumb guifg=" . s:light00
execute "hi Question guifg=" . s:green
execute "hi SpellBad gui=underline"
execute "hi SpellLocal guifg=" . s:light01
execute "hi StatusLine guibg=" . s:dark10
execute "hi StatusLineNC guibg=" . s:dark11
execute "hi TabLineFill guibg=" . s:dark01
execute "hi TabLineSel guibg=" . s:dark01
execute "hi Title guifg=" . s:purple
execute "hi Visual guibg=" . s:dark11
execute "hi VisualNOS guibg=" . s:dark10
execute "hi WhiteSpace guifg=" . s:grey
execute "hi WildMenu guibg=" . s:dark11

" linked groups
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link CursorLine CursorColumn
hi! link TermCursor Cursor
hi! link TermCursorNC Cursor
hi! link ErrorMsg DiffDelete
hi! link Folded CursorColumn
hi! link Substitue IncSearch
hi! link MsgArea ModeMsg
hi! link MsgSeparator ModeMsg
hi! link MoreMsg ModeMsg
hi! link NonText EndOfBuffer
hi! link NormalNC NormalFloat
hi! link QuickFixLine NormalNC
hi! link Search IncSearch
hi! link SpecialKey NonText
hi! link SpellCap SpellBad
hi! link SpellRare SpellLocal
hi! link WarningMsg DiffText
