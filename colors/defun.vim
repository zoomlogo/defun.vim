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

" helper function
function! s:Highlight(group, fg, ...)
    " group, guifg, guibg, gui, guisp

    let fg = a:fg

    if a:0 >= 1
        let bg = a:1
    else
        let bg = s:none
    endif

    if a:0 >= 2
        let gui_ = a:2
    else
        let gui_ = s:none
    endif

    if a:0 >= 3
        let sp_ = a:3
    else
        let sp_ = s:none
    endif

    let highlight_string = [ "hi", a:group,
                \ "guifg=" . fg,
                \ "guibg=" . bg,
                \ "gui=" . gui_,
                \ "guisp=" . sp_,
                \ ]

    execute join(highlight_string, " ")
endfunction

" highlight the groups
