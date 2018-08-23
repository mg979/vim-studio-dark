" Name:         Vim Studio Dark
" Author:       Gianmaria Bajo <mg1979.git@gmail.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: gio 23 ago 2018 05:26:02 CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Vim Studio Dark] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'vsdark'

if &background ==# 'dark'
  hi Normal ctermfg=252 ctermbg=235 guifg=#c5d4dd guibg=#262626 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=110 ctermbg=bg guifg=#83afe5 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=NONE ctermbg=24 guifg=NONE guibg=#264f78 guisp=NONE cterm=NONE gui=NONE
  hi VisualNOS ctermfg=NONE ctermbg=24 guifg=NONE guibg=#264f78 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=110 ctermbg=bg guifg=#83afe5 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=110 ctermbg=bg guifg=#83afe5 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi IncSearch ctermfg=236 ctermbg=174 guifg=#333233 guibg=#df8c8c guisp=NONE cterm=NONE gui=NONE
  hi Search ctermfg=NONE ctermbg=239 guifg=NONE guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=243 ctermbg=110 guifg=#6a7d89 guibg=#83afe5 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=110 ctermbg=bg guifg=#83afe5 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=110 ctermbg=bg guifg=#83afe5 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi ModeMsg ctermfg=110 ctermbg=bg guifg=#83afe5 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=fg ctermbg=24 guifg=fg guibg=#073655 guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=252 ctermbg=237 guifg=#c5d4dd guibg=#3d3d40 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=110 ctermbg=243 guifg=#83afe5 guibg=#6a7d89 guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi SpellCap ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=252 ctermbg=239 guifg=#c5d4dd guibg=#3c4c55 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=252 ctermbg=24 guifg=#c5d4dd guibg=#073655 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=65 ctermbg=65 guifg=#608b4e guibg=#608b4e guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=110 ctermbg=110 guifg=#83afe5 guibg=#83afe5 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=239 ctermbg=150 guifg=#3c4c55 guibg=#a8ce93 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=239 ctermbg=223 guifg=#3c4c55 guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi DiffText ctermfg=239 ctermbg=223 guifg=#3c4c55 guibg=#f2c38f guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi diffAdded ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi diffChanged ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi diffRemoved ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi diffDiffer ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi diffFile ctermfg=173 ctermbg=bg guifg=#ce9178 guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi diffLine ctermfg=186 ctermbg=bg guifg=#dada93 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi SignColumn ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=243 ctermbg=bg guifg=#6a7d89 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=fg ctermbg=236 guifg=fg guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=fg ctermbg=236 guifg=fg guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi ColorColumn ctermfg=fg ctermbg=236 guifg=fg guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=235 ctermbg=bg guifg=#262626 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=236 ctermbg=235 guifg=#333233 guibg=#212733 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=252 ctermbg=243 guifg=#c5d4dd guibg=#6a7d89 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=252 ctermbg=243 guifg=#c5d4dd guibg=#6a7d89 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=248 ctermbg=236 guifg=#a9a9a9 guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=110 ctermbg=239 guifg=#83afe5 guibg=#3c4c55 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=248 ctermbg=236 guifg=#a9a9a9 guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=252 ctermbg=243 guifg=#c5d4dd guibg=#6a7d89 guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=173 ctermbg=bg guifg=#ce9178 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=110 ctermbg=bg guifg=#83afe5 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=251 ctermbg=bg guifg=#c9c6c9 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi Function ctermfg=255 ctermbg=bg guifg=#e6eef3 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Conditional ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=186 ctermbg=bg guifg=#dada93 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=109 ctermbg=bg guifg=#7fc1ca guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=104 ctermbg=bg guifg=#9a93e1 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=104 ctermbg=bg guifg=#9a93e1 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=182 ctermbg=bg guifg=#dfafdf guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=65 ctermbg=bg guifg=#608b4e guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=65 ctermbg=bg guifg=#608b4e guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=65 ctermbg=bg guifg=#608b4e guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi GitGutterAdd ctermfg=34 ctermbg=bg guifg=#00af00 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChange ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChangeDelete ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi GitGutterDelete ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi! link vimDocstring String
  hi! link vimConditional Conditional
  hi! link vimLetVar Identifier
  hi vimLet ctermfg=248 ctermbg=bg guifg=#a9a9a9 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimCall ctermfg=248 ctermbg=bg guifg=#a9a9a9 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimSelf ctermfg=109 ctermbg=bg guifg=#7fc1ca guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi! link pythonSelf Identifier
  hi! link pythonOperatorSymbol Operator
  hi! link pythonBraces Special
  hi! link pythonGlobalVar Special
  hi! link pythonStringType Statement
  call vsd#terminal_dark()
  call vsd#extras()
  if !g:VSD.conservative
    hi vimCommand ctermfg=176 ctermbg=bg guifg=#C586C0 guibg=bg guisp=NONE cterm=NONE gui=NONE
  endif
  filetype detect
  finish
endif

hi Normal ctermfg=16 ctermbg=252 guifg=#000000 guibg=#cccccc guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=250 guifg=NONE guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=250 guifg=NONE guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=196 ctermbg=214 guifg=#ff0000 guibg=#ffbc29 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=25 ctermbg=223 guifg=#0070af guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=252 ctermbg=25 guifg=#cccccc guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=21 ctermbg=25 guifg=#2222ff guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=21 ctermbg=214 guifg=#2222ff guibg=#ffbc29 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=21 ctermbg=255 guifg=#2222ff guibg=#f2f2f2 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=25 ctermbg=21 guifg=#0070af guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=67 ctermbg=250 guifg=#708090 guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=252 ctermbg=25 guifg=#cccccc guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=21 ctermbg=21 guifg=#2222ff guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=28 ctermbg=28 guifg=#008000 guibg=#008000 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=235 ctermbg=150 guifg=#262626 guibg=#a8ce93 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=235 ctermbg=223 guifg=#262626 guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=235 ctermbg=223 guifg=#262626 guibg=#f2c38f guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SignColumn ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=fg ctermbg=250 guifg=fg guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=fg ctermbg=250 guifg=fg guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=250 guifg=fg guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=255 ctermbg=bg guifg=#f2f2f2 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=25 ctermbg=25 guifg=#0070af guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=25 ctermbg=250 guifg=#0070af guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=25 ctermbg=250 guifg=#0070af guibg=#bbbbbb guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=234 ctermbg=248 guifg=#1e1e1e guibg=#a9a9a9 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=244 ctermbg=21 guifg=#808080 guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=234 ctermbg=248 guifg=#1e1e1e guibg=#a9a9a9 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=fg ctermbg=109 guifg=fg guibg=#7fc1ca guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=124 ctermbg=bg guifg=#a31515 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Function ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Conditional ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=234 ctermbg=bg guifg=#1e1e1e guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=175 ctermbg=bg guifg=#d18ec2 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=58 ctermbg=bg guifg=#666600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=58 ctermbg=bg guifg=#666600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=28 ctermbg=bg guifg=#008000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=28 ctermbg=bg guifg=#008000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=28 ctermbg=bg guifg=#008000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterAdd ctermfg=34 ctermbg=bg guifg=#00af00 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=58 ctermbg=bg guifg=#666600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=58 ctermbg=bg guifg=#666600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
call vsd#terminal_light()
filetype detect
finish

" Background: dark
" Color:      black       #262626 ~
" Color:      white       #c5d4dd ~
" Color:      white2      #e6eef3 ~
" Color:      yellow      #dada93 ~
" Color:      special     #f2c38f ~
" Color:      lightblue   #83afe5 ~
" Color:      skyblue     #569cd6 ~
" Color:      darkblue    #073655 ~
" Color:      blue        #264f78 ~
" Color:      nightblue   #212733 ~
" Color:      lightgreen  #a8ce93 ~
" Color:      green     	#00af00 ~
" Color:      darkgreen   #608b4e ~
" Color:      cyan        #7fc1ca ~
" Color:      purple      #9a93e1 ~
" Color:      pink1       #dfafdf ~
" Color:      pink2       #d18ec2 ~
" Color:      grey1       #556873 ~
" Color:      grey2       #3c4c55 ~
" Color:      grey3       #4c4e50 ~
" Color:      grey4       #3d3d40 ~
" Color:      darkgrey    #333233 ~
" Color:      lightgrey1  #c5d4dd ~
" Color:      lightgrey2  #c9c6c9 ~
" Color:      lightgrey3  #a9a9a9 ~
" Color:      lightgrey4  #9a9a9a ~
" Color:      bluegrey    #6a7d89 ~
" Color:      string      #ce9178 ~
" Color:      red1        #df8c8c ~
" Color:      red2        #ff0000 ~
" Normal 				white         	black
" MatchParen                      red2          	bg
" CursorLineNr                    lightblue     	bg
" Visual                          none          	blue
" VisualNOS                       none          	blue
" Folded                          lightblue     	bg
" FoldColumn                      lightblue     	bg
" IncSearch                       darkgrey      	red1
" Search                          none          	grey3
" ToolbarButton                   bluegrey      	lightblue
" Question                        lightblue     	bg
" MoreMsg                         lightblue     	bg
" ModeMsg                         lightblue     	bg
" WildMenu                        fg            	darkblue
" StatusLine                      lightgrey1    	grey4
" StatusLineTerm                  lightblue     	bluegrey
" Error                           red2          	bg
" ErrorMsg                        red2          	bg
" WarningMsg                      red1          	bg
" SpellBad                        red1          	bg
" SpellCap                        red1          	bg
" Todo                            red1          	bg
" Pmenu                           lightgrey1    	grey2
" PmenuSel                        lightgrey1    	darkblue
" PmenuSbar                       darkgreen     	darkgreen
" PmenuThumb                      lightblue     	lightblue
" DiffAdd                         grey2         	lightgreen
" DiffChange                      grey2         	special
" DiffDelete                      red1          	bg
" DiffText                        grey2         	special bold
" diffAdded                       lightgreen      bg
" diffChanged                     special         bg
" diffRemoved                     red1            bg
" diffDiffer                      special         bg bold
" diffFile                        string          bg bold
" diffLine                        yellow          bg italic
" SignColumn                      fg            	bg
" LineNr                          bluegrey      	bg
" CursorLine                      fg            	darkgrey
" CursorColumn                    fg            	darkgrey
" ColorColumn                     fg            	darkgrey
" EndOfBuffer                     black         	bg
" VertSplit                       darkgrey      	nightblue
" StatusLineNC                    lightgrey1    	bluegrey
" StatusLineTermNC                lightgrey1    	bluegrey
" TabLine                         lightgrey3    	darkgrey
" TabLineSel                      lightblue     	grey2
" TabLineFill                     lightgrey3    	darkgrey
" ToolbarLine                     lightgrey1    	bluegrey
" String                          string        	bg
" Constant                        lightgreen    	bg
" Directory                       lightblue     	bg
" Identifier                      lightgrey2    	bg italic
" Function                        white2        	bg
" Statement                       skyblue       	bg
" Conditional                     skyblue       	bg
" Operator                        yellow        	bg
" Number                          cyan          	bg
" Type                            lightgreen    	bg
" Define                          lightgreen    	bg
" PreProc                         purple        	bg
" Keyword                         purple        	bg
" Underlined                      pink1         	bg
" Special                         special       	bg
" SpecialKey                      special       	bg
" NonText                         special       	bg
" Title                           special       	bg
" Comment                         darkgreen     	bg
" Ignore                          darkgreen     	bg
" Conceal                         darkgreen     	bg
" Cursor 				fg            	bg
" QuickFixLine 		-> 	Search
" GitGutterAdd                    green   	bg
" GitGutterChange                 special 	bg
" GitGutterChangeDelete           special 	bg
" GitGutterDelete                 red2    	bg
" vimDocstring   		-> 	String
" vimConditional 		-> 	Conditional
" vimLetVar      		-> 	Identifier
" vimLet  			lightgrey3 	bg
" vimCall 			lightgrey3 	bg
" vimSelf 			cyan 	 	bg italic
" pythonSelf           	-> 	Identifier
" pythonOperatorSymbol 	-> 	Operator
" pythonBraces         	-> 	Special
" pythonGlobalVar      	-> 	Special
" pythonStringType     	-> 	Statement
" Background: light
" Color:      yel1 #ffbc29 ~
" Color:      yel2 #f2c38f ~
" Color:      org1 #eba219 ~
" Color:      org2 #c67006 ~
" Color:      blu1 #2222ff ~
" Color:      blu2 #0070af ~
" Color:      blu3 #212733 ~
" Color:      grn1 #a8ce93 ~
" Color:      grn2 #008000 ~
" Color:      cya1 #7fc1ca ~
" Color:      cya2 #42dcd7 ~
" Color:      purp #6f008a ~
" Color:      pin1 #dfafdf ~
" Color:      pin2 #d18ec2 ~
" Color:      gre1 #708090 ~
" Color:      gre2 #808080 ~
" Color:      lgr1 #bbbbbb ~
" Color:      lgr2 #c9c6c9 ~
" Color:      lgr3 #a9a9a9 ~
" Color:      lgr4 #9a9a9a ~
" Color:      blgr #0070af ~
" Color:      strg #a31515 ~
" Color:      red1 #df8c8c ~
" Color:      red2 #ff0000 ~
" Color:      red3 #bf3434 ~
" Color:      whi1 #cccccc ~
" Color:      whi2 #f2f2f2 ~
" Color:      blk1 #333233 ~
" Color:      blk2 #262626 ~
" Color:      blk3 #1e1e1e ~
" Color:      blk4 #000000 ~
" Color:      special #666600 ~
" Color:      green   #00af00 ~
" Normal 				blk4            whi1
" MatchParen                      red2    	bg
" CursorLineNr                    blu1    	bg
" Visual                          none      	lgr1
" VisualNOS                       none      	lgr1
" Folded                          blu1    	bg
" FoldColumn                      blu1    	bg
" IncSearch                       red2    	yel1
" Search                          blgr    	yel2
" WildMenu                        whi1    	blu2
" ToolbarButton                   blu1    	blgr
" Question                        blu1    	yel1
" MoreMsg                         blu1    	bg
" ModeMsg                         blu1    	bg
" StatusLine                      blu1    	whi2
" StatusLineTerm                  blgr    	blu1
" Error                           red2    	bg
" ErrorMsg                        red2    	bg
" WarningMsg                      red1    	bg
" SpellBad                        red1    	bg
" SpellCap                        red1    	bg
" Todo                            blu1    	bg
" Pmenu                           gre1    	lgr1
" PmenuSel                        whi1    	blgr
" PmenuThumb                      blu1    	blu1
" PmenuSbar                       grn2    	grn2
" DiffAdd                         blk2    	grn1
" DiffChange                      blk2    	yel2
" DiffDelete                      red1    	bg
" DiffText                        blk2    	yel2 bold
" SignColumn                      fg      	bg
" LineNr                          blgr    	bg
" CursorLine                      fg      	lgr1
" CursorColumn                    fg      	lgr1
" ColorColumn                     fg      	lgr1
" EndOfBuffer                     whi2    	bg
" VertSplit                       blgr    	blgr
" StatusLineNC                    blgr    	lgr1
" StatusLineTermNC                blgr    	lgr1
" TabLine                         blk3    	lgr3
" TabLineSel                      gre2    	blu1
" TabLineFill                     blk3    	lgr3
" ToolbarLine                     fg      	cya1
" String                          strg    	bg
" Constant                        purp    	bg
" Directory                       blu1    	bg
" Identifier                      blu2    	bg italic
" Function                        blu2    	bg
" Conditional                     blu2 		bg
" Statement                       blu1    	bg
" Operator                        blu2    	bg
" Number                          blk3    	bg
" Type                            blu2    	bg
" PreProc                         purp    	bg
" Keyword                         purp    	bg
" Underlined                      pin2    	bg
" Special                         special		bg
" SpecialKey                      special    	bg
" NonText                         blu2    	bg
" Title                           blu2    	bg
" Comment                         grn2    	bg
" Ignore                          grn2    	bg
" Conceal                         grn2    	bg
" GitGutterAdd                    green bg
" GitGutterChange                 special bg
" GitGutterChangeDelete           special bg
" GitGutterDelete                 red2 bg
