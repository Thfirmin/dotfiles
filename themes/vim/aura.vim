" Aura theme for Vim

" Enable syntax highlighting and set colorscheme
syntax enable
colorscheme aura

" General highlighting
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guifg=#6c7680 ctermfg=239
highlight CursorLineNr guifg=#7f8c98 ctermfg=239

" Syntax highlighting
highlight Comment guifg=#63777f ctermfg=59
highlight String guifg=#56b6c2 ctermfg=81
highlight Number guifg=#f08d49 ctermfg=215
highlight Keyword guifg=#f08d49 ctermfg=215
highlight Function guifg=#f2c285 ctermfg=221
highlight Constant guifg=#7bc275 ctermfg=114
highlight Type guifg=#b4b7b4 ctermfg=248
highlight Statement guifg=#f08d49 ctermfg=215
highlight PreProc guifg=#f08d49 ctermfg=215

" Search highlighting
highlight Search guibg=#f2c285 guifg=NONE ctermbg=222 ctermfg=NONE
highlight IncSearch guibg=#f2c285 guifg=NONE ctermbg=222 ctermfg=NONE

" Status line
highlight StatusLine guibg=#29343d guifg=#b4b7b4 ctermbg=235 ctermfg=248
highlight StatusLineNC guibg=#1f262b guifg=#7f8c98 ctermbg=233 ctermfg=244

" Tabline
highlight TabLine guibg=#29343d guifg=#b4b7b4 ctermbg=235 ctermfg=248
highlight TabLineFill guibg=#29343d ctermbg=235
highlight TabLineSel guibg=#1f262b guifg=#f08d49 ctermbg=235 ctermfg=215

" Popup menu
highlight Pmenu guibg=#29343d guifg=#b4b7b4 ctermbg=235 ctermfg=248
highlight PmenuSel guibg=#1f262b guifg=#f08d49 ctermbg=235 ctermfg=215

" Diff highlighting
highlight DiffAdd guibg=#304c4d guifg=#7bc275 ctermbg=23 ctermfg=114
highlight DiffChange guibg=#414143 guifg=#f2c285 ctermbg=24 ctermfg=221
highlight DiffDelete guibg=#5c3736 guifg=#e95678 ctermbg=52 ctermfg=204

" Cursor line
highlight CursorLine guibg=#1f262b ctermbg=233

" Visual selection
highlight Visual guibg=#414143 ctermbg=24

" Wildmenu
highlight WildMenu guibg=#63777f guifg=#29343d ctermbg=59 ctermfg=235
