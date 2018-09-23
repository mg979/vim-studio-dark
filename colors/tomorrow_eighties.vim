" Name:         Tomorrow-Night-Eighties
" Author:       Chris Kempson <http://chriskempson.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: dom 23 set 2018 15:30:07 CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Tomorrow-Night-Eighties] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'tomorrow_eighties'

call vsd#init()
let s:load_for = { ft -> g:VSD[ft] || g:VSD.extra_syntax }

hi Normal ctermfg=252 ctermbg=236 guifg=#cccccc guibg=#2d2d2d guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=239 ctermbg=bg guifg=#515151 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=239 ctermbg=bg guifg=#515151 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=bg ctermbg=222 guifg=bg guibg=#ffcc66 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineFill ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=239 ctermbg=222 guifg=#4d5057 guibg=#ffcc66 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=239 ctermbg=222 guifg=#4d5057 guibg=#ffcc66 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTermNC ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=239 ctermbg=239 guifg=#4d5057 guibg=#4d5057 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=239 guifg=NONE guibg=#515151 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=239 guifg=NONE guibg=#515151 guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=67 ctermbg=bg guifg=#6699cc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=151 ctermbg=bg guifg=#99cc99 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=151 ctermbg=bg guifg=#99cc99 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=151 ctermbg=bg guifg=#99cc99 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=210 ctermbg=bg guifg=#f2777a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=fg ctermbg=239 guifg=fg guibg=#515151 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=247 ctermbg=bg guifg=#999999 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=fg ctermbg=237 guifg=fg guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=fg ctermbg=239 guifg=fg guibg=#515151 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=fg ctermbg=239 guifg=fg guibg=#515151 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=237 guifg=fg guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=247 ctermbg=bg guifg=#999999 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=247 ctermbg=bg guifg=#999999 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=247 ctermbg=bg guifg=#999999 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=210 ctermbg=bg guifg=#f2777a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Conditional ctermfg=67 ctermbg=bg guifg=#6699cc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=209 ctermbg=bg guifg=#f99157 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=209 ctermbg=bg guifg=#f99157 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=151 ctermbg=bg guifg=#99cc99 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=239 ctermbg=bg guifg=#515151 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=80 ctermbg=bg guifg=#66cccc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=67 ctermbg=bg guifg=#6699cc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=67 ctermbg=bg guifg=#6699cc guibg=bg guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=fg ctermbg=239 guifg=fg guibg=#515151 guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=bg ctermbg=210 guifg=bg guibg=#f2777a guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=fg ctermbg=67 guifg=fg guibg=#6699cc guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=237 ctermbg=67 guifg=#393939 guibg=#6699cc guisp=NONE cterm=NONE gui=NONE
hi diffAdded ctermfg=151 ctermbg=bg guifg=#99cc99 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi diffRemoved ctermfg=210 ctermbg=bg guifg=#f2777a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi gitcommitSummary ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Cursor ctermfg=fg ctermbg=151 guifg=fg guibg=#99cc99 guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Command ctermfg=210 ctermbg=bg guifg=#f2777a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterAdd ctermfg=151 ctermbg=bg guifg=#99cc99 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=210 ctermbg=bg guifg=#f2777a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignAdd ctermfg=151 ctermbg=bg guifg=#99cc99 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChange ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChangeDelete ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignDelete ctermfg=210 ctermbg=bg guifg=#f2777a guibg=bg guisp=NONE cterm=NONE gui=NONE
if s:load_for('vim')
  hi! link vimDocstring String
  hi! link vimConditional Conditional
  hi! link vimRepeat Conditional
  hi! link vimLetVar Identifier
  hi! link helpCommand Type
  hi vimLet ctermfg=248 ctermbg=bg guifg=#a9a9a9 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimCall ctermfg=248 ctermbg=bg guifg=#a9a9a9 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimSelf ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
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
  hi pythonFunction ctermfg=67 ctermbg=bg guifg=#6699cc guibg=bg guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('markdown')
  hi mkdItalic ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdBold ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdBoldItalic ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdListItem ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdID ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdRule ctermfg=182 ctermbg=bg guifg=#cc99cc guibg=bg guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('cpp')
  hi! link cppOperatorSymbol Operator
endif
call vsd#terminal_dark()
call vsd#extras()
call vsd#more_colors()
silent! LightlineTheme Tomorrow_Night_Eighties
silent! VMTheme codedark
if exists('loaded_xtabline')
  let g:xtabline.Vars.has_reloaded_scheme = 1
  silent! XTabTheme tomorrow
endif
filetype detect
finish

" Background: dark
" Color:	    foreground	 #cccccc ~
" Color:	    background	 #2d2d2d ~
" Color:	    selection	 #515151 ~
" Color:	    line	 #393939 ~
" Color:	    comment	 #999999 ~
" Color:	    red		 #f2777a ~
" Color:	    orange	 #f99157 ~
" Color:	    yellow	 #ffcc66 ~
" Color:	    green	 #99cc99 ~
" Color:	    aqua	 #66cccc ~
" Color:	    blue	 #6699cc ~
" Color:	    purple	 #cc99cc ~
" Color:	    window	 #4d5057 ~
" Color:	    special	 #f2c38f ~
" Color:	    lightgrey	 #a9a9a9 ~
" Normal				foreground	background
" LineNr				selection	bg
" NonText				selection	bg
" Search				bg		yellow
" TabLine				window		fg reverse
" TabLineFill			window		fg reverse
" StatusLine			window		yellow reverse
" StatusLineNC			window		fg reverse
" StatusLineTerm			window		yellow reverse
" StatusLineTermNC		window		fg reverse
" VertSplit			window		window
" Visual				none		selection
" VisualNOS			none		selection
" Directory			blue		bg
" ModeMsg				green		bg
" MoreMsg				green		bg
" Question			green		bg
" WarningMsg			red		bg
" MatchParen			fg		selection
" Folded				comment		bg
" FoldColumn			fg		bg
" CursorLine			none		line
" CursorColumn			fg		line
" Pmenu				fg		selection
" PmenuSel			fg		selection reverse
" SignColumn			fg		bg
" ColorColumn			fg		line
" Comment				comment		bg
" Todo				comment		bg
" Title				comment		bg
" Identifier			red		bg
" Statement			fg		bg
" Conditional			blue		bg
" Repeat				fg		bg
" Structure			purple		bg
" Function			fg		bg
" Constant			orange		bg
" Keyword				orange		bg
" String				green		bg
" Special				special		bg
" SpecialKey			selection	bg
" PreProc				purple		bg
" Operator			aqua		bg
" Type				blue		bg
" Define				purple		bg
" Include				blue		bg
" DiffAdd				fg		selection
" DiffDelete			bg		red
" DiffChange			fg		blue
" DiffText			line		blue
" diffAdded			green		bg
" diffRemoved			red		bg
" gitcommitSummary		fg		bg bold
" Cursor				fg		green
" QuickFixLine		->	Search
" Command				red		bg
" GitGutterAdd			green		bg
" GitGutterChange			special		bg
" GitGutterChangeDelete		special		bg
" GitGutterDelete			red		bg
" SignifySignAdd			green		bg
" SignifySignChange		special		bg
" SignifySignChangeDelete		special		bg
" SignifySignDelete		red		bg
" vimDocstring		->	String
" vimConditional		->	Conditional
" vimRepeat		->	Conditional
" vimLetVar		->	Identifier
" helpCommand		->	Type
" vimLet				lightgrey	bg
" vimCall				lightgrey	bg
" vimSelf				special		bg italic
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
" pythonFunction			blue		bg
" mkdItalic			purple		bg
" mkdBold				purple		bg
" mkdBoldItalic			purple		bg
" mkdListItem			special		bg
" mkdID				purple		bg
" mkdRule				purple		bg
" cppOperatorSymbol -> Operator
