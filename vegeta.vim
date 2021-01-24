" Vim color file
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last Change:  2001 Jul 23

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.

"hi clear Normal
"set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif
let colors_name = "vegeta"
"if &t_Co > 255
""    hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   "hi MatchParen      ctermfg=208  ctermbg=233 cterm=bold
   "set statusline=%1*\%<%.50F\                                     "显示文件名和文件路径
   "set statusline+=%=%2*\%y%m%r%h%w\ %*                            "显示文件类型及文件状态
   "set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*                       "显示文件编码类型
   ""set statusline+=%4*\ row:%l/%L,col:%c\ %*                       "显示光标所在行和列
   "set statusline+=%5*\%3p%%\%*                                    "显示光标前文本所占总文本的比例
   "hi User1 cterm=none ctermfg=12 ctermbg=0
   "hi User2 cterm=none ctermfg=208 ctermbg=0
   "hi User3 cterm=none ctermfg=169 ctermbg=0
   ""hi User4 cterm=none ctermfg=100 ctermbg=0
   "hi User5 cterm=none ctermfg=green ctermbg=0
"endif

" vim: sw=2
" Visual:高亮行(bg+fg)
" CursorLine:光标行
" MatchParen:匹配括号
" Number:数字
" LineNr:行号
" Error:错误提示颜色
" complete menu的配置蓝色修改为黄色
" StatusLine:状态栏的配置
" StatusLineNC:状态栏的配置

if &t_Co > 255
   "if s:molokai_original == 1
      "hi Normal                   ctermbg=234
      "hi CursorLine               ctermbg=235   cterm=none
      "hi CursorLineNr ctermfg=208               cterm=none
   "else
      "hi Normal       ctermfg=252 ctermbg=233
      "hi CursorLine               ctermbg=234   cterm=none
      "hi CursorLineNr ctermfg=208               cterm=none
   "endif
   hi Normal                       ctermbg=234
   hi CursorLine                   ctermbg=233   cterm=none
   hi CursorLineNr    ctermfg=208                cterm=none
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=190
   hi String          ctermfg=144
   hi Conditional     ctermfg=161                cterm=bold
   hi Constant        ctermfg=135                cterm=bold
   hi Cursor          ctermfg=16   ctermbg=253
   hi Debug           ctermfg=225                cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                      ctermbg=24
   hi DiffChange      ctermfg=181  ctermbg=239
   hi DiffDelete      ctermfg=162  ctermbg=53
   hi DiffText                     ctermbg=102   cterm=bold

   hi Directory       ctermfg=118                cterm=bold
   "hi Error           ctermfg=219  ctermbg=124
   hi Error           ctermfg=219  ctermbg=none
   hi ErrorMsg        ctermfg=199  ctermbg=16    cterm=bold
   hi Exception       ctermfg=118                cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67   ctermbg=16
   hi Folded          ctermfg=67   ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208                cterm=none
   hi Ignore          ctermfg=244  ctermbg=232
   hi IncSearch       ctermfg=193  ctermbg=16

   hi keyword         ctermfg=161                cterm=bold
   hi Label           ctermfg=229                cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=208  ctermbg=233   cterm=bold
   "hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=220  ctermbg=233
   hi PmenuSel        ctermfg=255  ctermbg=242
   hi PmenuSbar                    ctermbg=232
   hi PmenuThumb      ctermfg=220

   hi PreCondit       ctermfg=118                cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=220
   hi Repeat          ctermfg=161                cterm=bold
   hi Search          ctermfg=0    ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118  ctermbg=235
   hi SpecialChar     ctermfg=161                cterm=bold
   hi SpecialComment  ctermfg=245                cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                 ctermbg=52
       hi SpellCap                 ctermbg=17
       hi SpellLocal               ctermbg=17
       hi SpellRare   ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=161                cterm=bold
   "hi StatusLine      ctermfg=238 ctermbg=253
   "hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231  ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                 cterm=none
   hi Underlined      ctermfg=244                cterm=underline

   hi VertSplit       ctermfg=244  ctermbg=232   cterm=bold
   hi VisualNOS                    ctermbg=238
   hi Visual          ctermfg=220  ctermbg=241
   hi WarningMsg      ctermfg=231  ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81   ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                 ctermbg=233
   hi ColorColumn                  ctermbg=236
   hi LineNr          ctermfg=250  ctermbg=0
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

   set statusline=%1*\%<%.50F\                                     "显示文件名和文件路径
   set statusline+=%=%2*\%y%m%r%h%w\ %*                            "显示文件类型及文件状态
   set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*                       "显示文件编码类型
   "set statusline+=%4*\ row:%l/%L,col:%c\ %*                       "显示光标所在行和列
   set statusline+=%5*\%3p%%\%*                                    "显示光标前文本所占总文本的比例
   hi User1 cterm=none ctermfg=12  ctermbg=0
   hi User2 cterm=none ctermfg=208 ctermbg=0
   hi User3 cterm=none ctermfg=169 ctermbg=0
   "hi User4 cterm=none ctermfg=100 ctermbg=0
   hi User5 cterm=none ctermfg=green ctermbg=0
endif
