" Name:         Sand
" Author:       Gianmaria Bajo <mg1979.git@gmail.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: ven 15 mar 2019 04:00:03 CET

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Sand] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'sand'

call vsd#init()
let s:load_for = { ft -> g:Vsd[ft] || g:Vsd.extra_syntax }

hi Normal ctermfg=251 ctermbg=236 guifg=#c6c6b9 guibg=#2d2d2d guisp=NONE cterm=NONE gui=NONE
let contrast = [ ['#3a3a3a', '237'],
      \['#2d2d2d', '236'],
      \['#262626', '235']]
let gui  = contrast[g:Vsd.contrast][0]
let term = contrast[g:Vsd.contrast][1]
exe "hi! Normal guibg=".gui." ctermbg=".term
if !has('patch-8.0.0616') && !has('gui_running') && !has('nvim')
  set background=dark
endif

" highlight groups
hi Cursor	guibg=khaki guifg=slategrey
hi IncSearch	guifg=slategrey guibg=khaki
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey30
hi Question	guifg=springgreen
hi Search	guibg=#5e4e21 guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#c2bfa5 guifg=black gui=none
hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
hi WarningMsg	guifg=salmon

" syntax highlighting groups
hi Comment	guifg=SkyBlue
hi Constant	guifg=#ffa0a0
hi Statement	guifg=khaki
hi PreProc	guifg=indianred
hi Type		guifg=darkkhaki gui=bold
hi Special	guifg=navajowhite
hi Todo		guifg=orangered guibg=yellow2

" color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=none ctermfg=186 ctermbg=64
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2 cterm=bold
hi Underlined	cterm=underline ctermfg=5
hi Error	cterm=bold ctermfg=7 ctermbg=1
hi EndOfBuffer ctermfg=239 ctermbg=NONE guifg=#4d4d4d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE guifg=#6b6a61 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Folded ctermfg=242 ctermbg=238 guifg=#6b6a61 guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=242 ctermbg=223 guifg=#6b6a61 guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=239 ctermbg=NONE guifg=#4d4d4d guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi SignColumn ctermfg=239 ctermbg=234 guifg=#4d4d4d guibg=#1e1e1e guisp=NONE cterm=NONE,italic gui=NONE,italic
hi VertSplit ctermfg=239 ctermbg=234 guifg=#4d4d4d guibg=#1e1e1e guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=167 ctermbg=234 guifg=#cd5c5c guibg=#1e1e1e guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Pmenu ctermfg=NONE ctermbg=101 guifg=NONE guibg=#999966 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=fg ctermbg=239 guifg=fg guibg=#4d4d4d guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1e1e1e guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=101 ctermbg=242 guifg=#999966 guibg=#6b6a61 guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=fg ctermbg=167 guifg=fg guibg=#cd5c5c guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NonText ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=234 guifg=fg guibg=#1e1e1e guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=236 ctermbg=180 guifg=#2d2d2d guibg=#dfaf87 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=fg ctermbg=238 guifg=fg guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi! link CursorColumn CursorLine
hi! link Conceal Comment
hi! link Ignore Comment
hi! link Delimiter Special
hi TabLine ctermfg=101 ctermbg=236 guifg=#999966 guibg=#333333 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=242 ctermbg=236 guifg=#6b6a61 guibg=#333333 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=180 ctermbg=234 guifg=#dfaf87 guibg=#1e1e1e guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Statement ctermfg=150 ctermbg=NONE guifg=#a8ce93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=245 ctermbg=NONE guifg=#8d8d8d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=182 ctermbg=NONE guifg=#c9acd2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=173 ctermbg=NONE guifg=#ed8e5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=167 ctermbg=NONE guifg=#cd5c5c guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellCap ctermfg=117 ctermbg=NONE guifg=#87ceeb guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellLocal ctermfg=117 ctermbg=NONE guifg=#87ceeb guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellRare ctermfg=182 ctermbg=NONE guifg=#c9acd2 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi DiffChange ctermfg=NONE ctermbg=239 guifg=NONE guibg=#4d4d4d guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=167 ctermbg=NONE guifg=#cd5c5c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffText ctermfg=NONE ctermbg=88 guifg=NONE guibg=#730b00 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffAdded ctermfg=71 ctermbg=NONE guifg=#7ab87a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi diffChanged ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi diffRemoved ctermfg=167 ctermbg=NONE guifg=#cd5c5c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi diffDiffer ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffFile ctermfg=245 ctermbg=NONE guifg=#8d8d8d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffLine ctermfg=101 ctermbg=NONE guifg=#999966 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi GitGutterAdd ctermfg=71 ctermbg=NONE guifg=#7ab87a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=167 ctermbg=NONE guifg=#cd5c5c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignAdd ctermfg=71 ctermbg=NONE guifg=#7ab87a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignChange ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignChangeDelete ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignDelete ctermfg=167 ctermbg=NONE guifg=#cd5c5c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi helpCommand ctermfg=117 ctermbg=NONE guifg=#87ceeb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link helpSectionDelim Constant
hi HelpHeadline ctermfg=186 ctermbg=NONE guifg=#dada93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
if s:load_for('vim')
  hi! link vimDocstring String
  hi! link vimEndBlock Conditional
  hi! link vimConditional Conditional
  hi! link vimRepeat Conditional
  hi! link vimLet String
  hi! link vimCall String
  hi vimCommand ctermfg=71 ctermbg=NONE guifg=#7ab87a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSelf ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi vimUserFunc ctermfg=251 ctermbg=NONE guifg=#c6c6b9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('python')
  hi! link pythonSelf Identifier
  hi! link pythonOperatorSymbol Operator
  hi! link pythonBraces Special
  hi! link pythonGlobalVar Define
  hi! link pythonStringType Statement
  hi! link pythonOperator Statement
  hi! link pythonBoolean Command
  hi! link pythonNone Command
  hi! link pythonStructure Keyword
  hi! link pythonStorageClass Keyword
  hi! link pythonTypeDef Keyword
  hi! link pythonFunction Constant
endif
if s:load_for('markdown')
  hi mkdItalic ctermfg=182 ctermbg=NONE guifg=#c9acd2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdBold ctermfg=182 ctermbg=NONE guifg=#c9acd2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdBoldItalic ctermfg=182 ctermbg=NONE guifg=#c9acd2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdListItem ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdID ctermfg=104 ctermbg=NONE guifg=#9a93e1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdRule ctermfg=104 ctermbg=NONE guifg=#9a93e1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('cpp')
  hi cppStructure ctermfg=182 ctermbg=NONE guifg=#c9acd2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cStorageClass ctermfg=167 ctermbg=NONE guifg=#cd5c5c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link cCharacter String
  hi! link cppOperatorSymbol Operator
endif
let g:terminal_ansi_colors = [
      \ "#3C4C55",
      \ "#DF8C8C",
      \ "#A8CE93",
      \ "#DADA93",
      \ "#83AFE5",
      \ "#9A93E1",
      \ "#83AFE5",
      \ "#C5D4DD",
      \ "#608b4e",
      \ "#F2C38F",
      \ "#A8CE93",
      \ "#DADA93",
      \ "#83AFE5",
      \ "#D18EC2",
      \ "#83AFE5",
      \ "#E6EEF3"
      \]

" NEOVIM TERMINAL MODE
let g:terminal_color_foreground = "#e6e1dc"
let g:terminal_color_background = "#2b2b2b"
let g:terminal_color_0 = "#2b2b2b"
let g:terminal_color_8 = "#5a647e"
let g:terminal_color_1 = "#da4939"
let g:terminal_color_9 = "#da4939"
let g:terminal_color_2 = "#a5c261"
let g:terminal_color_10 = "#a5c261"
let g:terminal_color_3 = "#ffc66d"
let g:terminal_color_11 = "#ffc66d"
let g:terminal_color_4 = "#6d9cbe"
let g:terminal_color_12 = "#6d9cbe"
let g:terminal_color_5 = "#b6b3eb"
let g:terminal_color_13 = "#b6b3eb"
let g:terminal_color_6 = "#519f50"
let g:terminal_color_14 = "#519f50"
let g:terminal_color_7 = "#e6e1dc"
let g:terminal_color_15 = "#f9f7f3"

" FZF
let g:fzf_colors = {
      \ "fg":      ["fg", "Normal"],
      \ "bg":      ["bg", "Normal"],
      \ "hl":      ["fg", "Conditional"],
      \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
      \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
      \ "hl+":     ["fg", "Conditional"],
      \ "info":    ["fg", "Conditional"],
      \ "border":  ["fg", "Ignore"],
      \ "prompt":  ["fg", "Comment"],
      \ "pointer": ["fg", "Conditional"],
      \ "marker":  ["fg", "Conditional"],
      \ "spinner": ["fg", "Conditional"],
      \ "header":  ["fg", "Conditional"]
      \}
call vsd#extras('sand')
filetype detect
finish

" Background: dark
" Color:	    background		#2d2d2d ~
" Color:	    foreground		#c6c6b9 ~
" Color:	    lightgrey		#6b6a61 ~
" Color:	    black		#1e1e1e ~
" Color:	    skyblue		SkyBlue ~
" Color:	    grey		#4d4d4d ~
" Color:	    grey2		#404040 ~
" Color:	    darkgrey		#333333 ~
" Color:	    sepia		#999966 ~
" Color:	    title		#ed8e5e ~
" Color:	    peru		#cd853f ~
" Color:	    white		#e6eef3 ~
" Color:	    red			#cd5c5c ~
" Color:	    darkred		#730b00 ~
" Color:	    lightgreen		#a8ce93 ~
" Color:	    green		#7ab87a ~
" Color:	    pink		#c9acd2 ~
" Color:	    yellow		#dada93 ~
" Color:	    special		#f2c38f ~
" Color:	    cursor 		#dfaf87 ~
" Color:	    purple		#9a93e1 ~
" Color:	    cyan		#42dcd7 ~
" Color:	    string		#8d8d8d ~
" Normal				foreground		background
" EndOfBuffer			grey			none
" Comment				lightgrey		none italic
" Folded				lightgrey		grey2
" FoldColumn			lightgrey		special
" LineNr				grey			none italic
" SignColumn			grey			black italic
" VertSplit			grey			black
" MatchParen			red			black bold
" Pmenu				none			sepia
" PmenuSel			fg			grey
" PmenuSbar			none			black
" PmenuThumb			sepia			lightgrey
" Todo				fg			red bold
" NonText				darkgrey		none
" ColorColumn			fg			black
" Cursor			        background		cursor
" CursorLine			fg			grey2
" CursorColumn		->	CursorLine
" Conceal			->	Comment
" Ignore			->	Comment
" Delimiter		->	Special
" TabLine				sepia			darkgrey
" TabLineFill			lightgrey		darkgrey
" TabLineSel			cursor			black
" Identifier			fg			none italic
" Statement			lightgreen		none
" String				string			none
" PreProc				pink			none
" Special				special			none
" Title				title			none
" SpellBad			red   			none undercurl
" SpellCap			skyblue			none undercurl
" SpellLocal			skyblue			none undercurl
" SpellRare			pink  			none undercurl
" DiffChange			none			grey
" DiffDelete			red			none bold
" DiffText       			none			darkred bold
" diffAdded			green	                none
" diffChanged			special		        none
" diffRemoved			red	                none
" diffDiffer			special		        none bold
" diffFile			string		        none bold
" diffLine			sepia		        none italic
" GitGutterAdd			green		none
" GitGutterChange			special		none
" GitGutterChangeDelete		special		none
" GitGutterDelete			red		none
" SignifySignAdd			green		none
" SignifySignChange		special		none
" SignifySignChangeDelete		special		none
" SignifySignDelete		red		none
" helpCommand			skyblue		none
" helpSectionDelim	->	Constant
" HelpHeadline			yellow		none
" vimDocstring		->	String
" vimEndBlock   		->	Conditional
" vimConditional		->	Conditional
" vimRepeat		->	Conditional
" vimLet			->	String
" vimCall			->	String
" vimCommand			green 		none
" vimSelf				special		none italic
" vimUserFunc			foreground	none
" pythonSelf		->	Identifier
" pythonOperatorSymbol	->	Operator
" pythonBraces		->	Special
" pythonGlobalVar		->	Define
" pythonStringType	->	Statement
" pythonOperator		->	Statement
" pythonBoolean		->	Command
" pythonNone		->	Command
" pythonStructure		->	Keyword
" pythonStorageClass	->	Keyword
" pythonTypeDef		->	Keyword
" pythonFunction		->	Constant
" mkdItalic			pink		none
" mkdBold				pink		none
" mkdBoldItalic			pink		none
" mkdListItem			special		none
" mkdID				purple		none
" mkdRule				purple		none
" cppStructure			pink		none
" cStorageClass			red		none
" cCharacter		->	String
" cppOperatorSymbol	->	Operator
