" MIT License (MIT)
"
" Copyright (c) 2023 Ashton Wiersdorf
" Copyright (c) 2026 Kuro7s
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

" This theme is a direct and minimal port of this emacs theme (nordic-night, the normal one):  https://codeberg.org/ashton314/nordic-night
" In addition, this theme also uses some of the code for the "retrobox" theme as a template.

hi clear

let g:colors_name = 'nordic-night'

hi! link CurSearch IncSearch
hi! link CursorColumn CursorLine
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign FoldColumn
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link MessageWindow PMenu
hi! link PopupNotification Normal
hi! link PreInsert LineNr
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Tag Special
hi! link Terminal Normal
hi! link VisualNOS Visual
hi! link lCursor Cursor

set background=dark
set t_Co=256

hi Normal           guifg=#d8dee9 guibg=#121212 guisp=NONE gui=NONE ctermfg=0 ctermbg=0
hi Boolean          guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi Character        guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi ColorColumn      guifg=NONE guibg=#000000 guisp=NONE gui=NONE
hi Comment          guifg=#8892A4 guibg=NONE guisp=NONE gui=NONE
hi Conceal          guifg=#494550 guibg=NONE guisp=NONE gui=NONE
hi Conditional      guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi Constant         guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi Cursor           guifg=#121212 guibg=#d8dee9 guisp=NONE gui=NONE
hi CursorIM         guifg=#121212 guibg=#d8dee9 guisp=NONE gui=NONE
hi CursorLine       guifg=NONE guibg=#202024 guisp=NONE gui=NONE
hi CursorLineNr     guifg=#d8dee9 guibg=#121212 guisp=NONE gui=bold
hi Debug            guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi Define           guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi Delimiter        guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"These are not done yet/Can redo them if tyou want
hi DiffAdd          guifg=#a3be8c guibg=NONE guisp=NONE gui=NONE
hi DiffChange       guifg=#ebcb8b guibg=NONE guisp=NONE gui=NONE
hi DiffDelete       guifg=#a89984 guibg=NONE guisp=NONE gui=NONE
hi DiffText         guifg=NONE guibg=NONE guisp=NONE gui=NONE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi Directory        guifg=#88c0d0 guibg=NONE guisp=NONE gui=bold
hi EndOfBuffer      guifg=#121212 guibg=NONE guisp=NONE gui=NONE
hi Error            guifg=#b48ead guibg=#121212 guisp=NONE gui=bold,reverse
hi ErrorMsg         guifg=#121212 guibg=#b48ead guisp=NONE gui=bold
hi Exception        guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi Float            guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi FoldColumn       guifg=#8892A4 guibg=#121212 guisp=NONE gui=NONE
hi Folded           guifg=#8892A4 guibg=#121212 guisp=NONE gui=NONE
hi Function         guifg=#88c0d0 guibg=NONE guisp=NONE gui=NONE
hi Identifier       guifg=#88c0d0 guibg=NONE guisp=NONE gui=NONE
hi Ignore           guifg=fg guibg=NONE guisp=NONE gui=NONE
hi IncSearch        guifg=NONE guibg=#5f431f guisp=NONE gui=NONE " Not revised
hi Include          guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi Keyword          guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi Label            guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi LineNr           guifg=#4c566a guibg=NONE guisp=NONE gui=NONE



" Mostly unrevised from retrobox
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Macro            guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi MatchParen       guifg=NONE guibg=#504945 guisp=NONE gui=bold,underline
hi ModeMsg          guifg=#a3be8c guibg=NONE guisp=NONE gui=bold
hi MoreMsg          guifg=#a3be8c guibg=NONE guisp=NONE gui=bold
hi NonText          guifg=#504945 guibg=NONE guisp=NONE gui=NONE
hi Number           guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi Operator         guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi Pmenu            guifg=NONE guibg=#3c3836 guisp=NONE gui=NONE
hi PmenuBorder      guifg=#a89984 guibg=#3c3836 guisp=NONE gui=NONE
hi PmenuExtra       guifg=#a89984 guibg=#3c3836 guisp=NONE gui=NONE
hi PmenuExtraSel    guifg=#a89984 guibg=#504945 guisp=NONE gui=NONE
hi PmenuKind        guifg=#b48ead guibg=#3c3836 guisp=NONE gui=NONE
hi PmenuKindSel     guifg=#b48ead guibg=#504945 guisp=NONE gui=NONE
hi PmenuMatch       guifg=#81a1c1 guibg=#3c3836 guisp=NONE gui=NONE
hi PmenuMatchSel    guifg=#81a1c1 guibg=#504945 guisp=NONE gui=NONE
hi PmenuSbar        guifg=NONE guibg=#3c3836 guisp=NONE gui=NONE
hi PmenuSel         guifg=NONE guibg=#504945 guisp=NONE gui=NONE
hi PmenuShadow      guifg=#a89984 guibg=#121212 guisp=NONE gui=NONE
hi PmenuThumb       guifg=NONE guibg=#4c566a guisp=NONE gui=NONE " Revised!
hi PreCondit        guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi PreProc          guifg=#81a1c1 guibg=NONE guisp=NONE gui=NONE
hi Question         guifg=#fe8019 guibg=NONE guisp=NONE gui=bold
hi QuickFixLine     guifg=NONE guibg=#4f2f4f guisp=NONE gui=NONE
hi Repeat           guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi Search           guifg=NONE guibg=#3a4a3a guisp=NONE gui=NONE
hi SignColumn       guifg=#8892A4 guibg=#121212 guisp=NONE gui=NONE
hi Special          guifg=#fe8019 guibg=NONE guisp=NONE gui=NONE
hi SpecialChar      guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi SpecialComment   guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi SpecialKey       guifg=#8892A4 guibg=NONE guisp=NONE gui=NONE
hi SpellBad         guifg=#b48ead guibg=NONE guisp=#b48ead gui=undercurl
hi SpellCap         guifg=#88c0d0 guibg=NONE guisp=#88c0d0 gui=undercurl
hi SpellLocal       guifg=#81a1c1 guibg=NONE guisp=#81a1c1 gui=undercurl
hi SpellRare        guifg=#81a1c1 guibg=NONE guisp=#81a1c1 gui=undercurl
hi Statement        guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi StatusLine       guifg=#504945 guibg=#d8dee9 guisp=NONE gui=bold,reverse
hi StatusLineNC     guifg=#3c3836 guibg=#a89984 guisp=NONE gui=reverse
hi StorageClass     guifg=#b48ead  guibg=NONE guisp=NONE gui=NONE
hi String           guifg=#a3be8c guibg=NONE guisp=NONE gui=NONE
hi Structure        guifg=#b48ead guibg=NONE guisp=NONE gui=NONE
hi TabLine          guifg=#a89984 guibg=#3c3836 guisp=NONE gui=NONE
hi TabLineFill      guifg=#d8dee9 guibg=#3c3836 guisp=NONE gui=NONE
hi TabLineSel       guifg=#d8dee9 guibg=#121212 guisp=NONE gui=bold
hi Title            guifg=#88c0d0 guibg=NONE guisp=NONE gui=bold
hi TitleBar         guifg=#d8dee9 guibg=#323232 guisp=NONE gui=NONE
hi TitleBarNC       guifg=#a89984 guibg=#222222 guisp=NONE gui=NONE
hi Todo             guifg=fg guibg=#121212 guisp=NONE gui=bold
hi ToolbarButton    guifg=#d8dee9 guibg=#202024 guisp=NONE gui=bold
hi ToolbarLine      guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Type             guifg=#a3be8c guibg=NONE guisp=NONE gui=NONE
hi Typedef          guifg=#a3be8c guibg=NONE guisp=NONE gui=NONE
hi Underlined       guifg=#88c0d0 guibg=NONE guisp=NONE gui=underline
hi VertSplit        guifg=#202024 guibg=#121212 guisp=NONE gui=NONE
hi Visual           guifg=NONE guibg=#2a405a guisp=NONE gui=NONE
hi WarningMsg       guifg=#b48ead guibg=NONE guisp=NONE gui=bold
hi WildMenu         guifg=#88c0d0 guibg=#504945 guisp=NONE gui=bold

