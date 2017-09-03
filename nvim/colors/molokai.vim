" Vim color file
"
" Maintainer: Justin M. Keyes <justinkz@gmail.com>
" Previous Maintainer: Tomas Restrepo <tomas@winterdom.com>
"
" Based on the Monokai theme for TextMate by Wimer Hazenberg and its darker
" variant by Hamish Stuart Macpherson.
"
" monokai theme copyright Wimer Hazenberg.
"
" molokai.vim source code is licensed as follows:
"
" The MIT License (MIT)
"
" Copyright (c) 2011 Tomas Restrepo
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="molokai"
" #AE81FF

hi Boolean         guifg=#FFFFFF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi String          guifg=#E6DB74
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi iCursor         guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F

" diff (unified)
hi diffAdded       guifg=#2BFF2B gui=NONE      ctermfg=46  cterm=NONE
hi diffRemoved     guifg=#FF2B2B gui=NONE      ctermfg=196 cterm=NONE
hi link diffSubname Normal

" diff (side-by-side)
hi DiffAdd         guifg=#000000 guibg=#2BFF2B ctermfg=0   ctermbg=46  gui=NONE cterm=NONE
hi DiffChange      guifg=#FFFFFF guibg=#4C4745 ctermfg=255 ctermbg=239 gui=NONE cterm=NONE
hi DiffDelete      guifg=#FFFFFF guibg=#FF2B2B ctermfg=255 ctermbg=196 gui=NONE cterm=NONE
hi DiffText        guifg=#000000 guibg=#ffb733 gui=NONE  ctermfg=000  ctermbg=214  cterm=NONE

hi Directory       guifg=#A6E22E               gui=bold

hi Error           guifg=#FFFFFF   guibg=Red                 ctermfg=15 ctermbg=9
hi ErrorMsg        guifg=#FFFFFF   guibg=Red     gui=bold    ctermfg=15 ctermbg=1 cterm=bold

hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF

"If 242 is too dark, keep incrementing...
hi FoldColumn      guifg=#465457 guibg=#000000 ctermfg=242 ctermbg=16
hi Folded          guifg=#465457 guibg=NONE    ctermfg=242 ctermbg=NONE

hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#465457               gui=italic ctermfg=242

hi MatchParen      guifg=#000000 guibg=#FD971F gui=NONE ctermfg=000 ctermbg=208 cterm=NONE
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" completion/popup menu
hi Pmenu           guifg=#FFFFFF   guibg=#000000 ctermfg=255  ctermbg=16
hi PmenuSel        guifg=#FFFFFF   guibg=#0a9dff gui=NONE ctermfg=255 ctermbg=242 cterm=NONE
hi PmenuSbar                       guibg=#857f78             ctermbg=232
hi PmenuThumb      guifg=#242321               ctermfg=81

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#000000 guibg=#FFE792 ctermfg=0   ctermbg=222   cterm=NONE
hi IncSearch       guifg=#C4BE89 guibg=#000000 ctermfg=193 ctermbg=16
hi QuickFixLine    guifg=#FFFFFF guibg=#F92672 ctermfg=255 ctermbg=197


" marks
hi SignColumn      guifg=#A6E22E guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic

hi SpellBad    guisp=#FF0000 gui=undercurl ctermfg=15   ctermbg=9
hi SpellCap    guisp=#7070F0 gui=undercurl              ctermbg=17
hi SpellLocal  guisp=#70F0F0 gui=undercurl              ctermbg=17
hi SpellRare   guisp=#FFFFFF gui=undercurl ctermfg=none ctermbg=none  cterm=reverse

hi Statement       guifg=#F92672 gui=bold ctermfg=197 cterm=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none

hi Normal          guifg=#F8F8F2 guibg=#1B1D1E
hi Comment         guifg=#7E8E91
hi CursorLine                    guibg=#293739
hi CursorLineNr    guifg=#FD971F               gui=none
hi CursorColumn                  guibg=#293739
hi ColorColumn                   guibg=#232526
hi LineNr          guifg=#465457 guibg=#232526 ctermfg=240 ctermbg=235
hi NonText         guifg=#465457

" cterm ...............................

hi Normal       ctermfg=252 ctermbg=234
hi CursorLine               ctermbg=236   cterm=none
hi CursorLineNr ctermfg=208               cterm=none
hi CursorColumn                ctermbg=236
hi ColorColumn                 ctermbg=236
hi Cursor          ctermfg=16  ctermbg=253

hi Debug           ctermfg=225               cterm=bold
hi Define          ctermfg=81
hi Delimiter       ctermfg=241

" hi Exception       ctermfg=154               cterm=bold
hi Exception       ctermfg=118               cterm=bold

hi Ignore          ctermfg=244 ctermbg=234

hi Label           ctermfg=229               cterm=none
hi Macro           ctermfg=193

hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229

hi Question        ctermfg=81

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialChar     ctermfg=161               cterm=bold
hi SpecialComment  ctermfg=245               cterm=bold
hi Special         ctermfg=81
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
hi StorageClass    ctermfg=208
hi Structure       ctermfg=81
hi Todo            ctermfg=231 ctermbg=234   cterm=bold

hi Typedef         ctermfg=81
hi Type            ctermfg=81                cterm=none
hi Underlined      ctermfg=244               cterm=underline

hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
hi VisualNOS                   ctermbg=238
hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16
" 141
hi Boolean         ctermfg=255
hi Character       ctermfg=222
hi Number          ctermfg=141
hi String          ctermfg=222
hi Conditional     ctermfg=197               cterm=bold
hi Constant        ctermfg=141               cterm=bold

hi Directory       ctermfg=154               cterm=bold
hi Float           ctermfg=141
hi Function        ctermfg=154
hi Identifier      ctermfg=208

hi Keyword         ctermfg=197               cterm=bold
hi Operator        ctermfg=197
hi PreCondit       ctermfg=154               cterm=bold
hi PreProc         ctermfg=154
hi Repeat          ctermfg=197               cterm=bold

hi Tag             ctermfg=197
hi Title           ctermfg=203
hi Visual                      ctermbg=238

hi Comment         ctermfg=244
hi NonText ctermfg=239
