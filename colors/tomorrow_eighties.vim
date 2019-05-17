" Name:         Tomorrow-Night-Eighties
" Author:       Chris Kempson <http://chriskempson.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: ven 17 mag 2019 18:07:12 CEST

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

silent! call vsd#init()
let s:load_for = { ft -> exists('g:Vsd') && g:Vsd[ft] }

hi Normal ctermfg=252 ctermbg=235 guifg=#cccccc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
if exists('g:Vsd')
  let contrast = [ ['#303030', '236'],
        \['#262626', '235'],
        \['#1e1e1e', '234']]
  let gui  = contrast[g:Vsd.contrast][0]
  let term = contrast[g:Vsd.contrast][1]
  exe "hi! Normal guibg=".gui." ctermbg=".term
endif
if !has('patch-8.0.0616') && !has('gui_running') && !has('nvim')
  set background=dark
endif
hi EndOfBuffer ctermfg=239 ctermbg=NONE guifg=#4d5057 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=239 ctermbg=NONE guifg=#4d5057 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=237 ctermbg=NONE guifg=#393939 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=235 ctermbg=223 guifg=#262626 guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=210 ctermbg=223 guifg=#f2777a guibg=#f2c38f guisp=NONE cterm=NONE,bold gui=NONE,bold
hi TabLine ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineFill ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=239 ctermbg=222 guifg=#4d5057 guibg=#ffcc66 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=239 ctermbg=222 guifg=#4d5057 guibg=#ffcc66 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTermNC ctermfg=239 ctermbg=fg guifg=#4d5057 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=235 ctermbg=239 guifg=#262626 guibg=#4d5057 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=237 guifg=NONE guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=237 guifg=NONE guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=151 ctermbg=NONE guifg=#99cc99 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=151 ctermbg=NONE guifg=#99cc99 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=151 ctermbg=NONE guifg=#99cc99 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=210 ctermbg=239 guifg=#f2777a guibg=#4d5057 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Folded ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=222 ctermbg=NONE guifg=#ffcc66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=fg ctermbg=237 guifg=fg guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=237 guifg=fg guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=247 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=209 ctermbg=NONE guifg=#f99157 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=151 ctermbg=NONE guifg=#99cc99 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Function ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conditional ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=80 ctermbg=NONE guifg=#66cccc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=209 ctermbg=NONE guifg=#f99157 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=222 ctermbg=NONE guifg=#ffcc66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=222 ctermbg=NONE guifg=#ffcc66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellCap ctermfg=209 ctermbg=NONE guifg=#f99157 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellLocal ctermfg=209 ctermbg=NONE guifg=#f99157 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellRare ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi Pmenu ctermfg=fg ctermbg=237 guifg=fg guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=fg ctermbg=237 guifg=fg guibg=#393939 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSbar ctermfg=235 ctermbg=235 guifg=#262626 guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=182 ctermbg=182 guifg=#cc99cc guibg=#cc99cc guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=fg ctermbg=237 guifg=fg guibg=#393939 guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=NONE ctermbg=210 guifg=NONE guibg=#f2777a guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=fg ctermbg=67 guifg=fg guibg=#6699cc guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=237 ctermbg=67 guifg=#393939 guibg=#6699cc guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=235 ctermbg=151 guifg=#262626 guibg=#99cc99 guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi! link Delimiter Special
hi Underlined ctermfg=67 ctermbg=NONE guifg=#6699cc guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi diffAdded ctermfg=151 ctermbg=NONE guifg=#99cc99 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi diffRemoved ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi gitcommitSummary ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Command ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conceal Comment
hi! link Ignore Comment
hi GitGutterAdd ctermfg=151 ctermbg=NONE guifg=#99cc99 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignAdd ctermfg=151 ctermbg=NONE guifg=#99cc99 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignChange ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignChangeDelete ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignDelete ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
if s:load_for('vim')
  hi! link vimDocstring String
  hi! link vimEndBlock Conditional
  hi! link vimConditional Conditional
  hi! link vimRepeat Conditional
  hi vimCommand ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimLet ctermfg=248 ctermbg=NONE guifg=#a9a9a9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCall ctermfg=248 ctermbg=NONE guifg=#a9a9a9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSelf ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi vimUserFunc ctermfg=252 ctermbg=NONE guifg=#cccccc guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
hi! link helpCommand Type
hi! link helpSectionDelim PreProc
hi! link HelpHeadline Statement
if s:load_for('python')
  hi! link pythonSelf Identifier
  hi! link pythonOperatorSymbol Operator
  hi! link pythonBraces Special
  hi pythonGlobalVar ctermfg=209 ctermbg=NONE guifg=#f99157 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link pythonStringType Statement
  hi! link pythonOperator Statement
  hi! link pythonBoolean Command
  hi! link pythonNone Command
  hi! link pythonStructure Keyword
  hi! link pythonStorageClass Keyword
  hi! link pythonTypeDef Keyword
  hi pythonFunction ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link pythonBuiltinFunc Structure
endif
if s:load_for('markdown')
  hi mkdItalic ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdBold ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdBoldItalic ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdListItem ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdID ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdRule ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('cpp')
  hi cppStructure ctermfg=182 ctermbg=NONE guifg=#cc99cc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cStorageClass ctermfg=210 ctermbg=NONE guifg=#f2777a guibg=NONE guisp=NONE cterm=NONE gui=NONE
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
let g:terminal_color_0 = "#3C4C55"
let g:terminal_color_1 = "#DF8C8C"
let g:terminal_color_2 = "#A8CE93"
let g:terminal_color_3 = "#DADA93"
let g:terminal_color_4 = "#83AFE5"
let g:terminal_color_5 = "#9A93E1"
let g:terminal_color_6 = "#83AFE5"
let g:terminal_color_7 = "#C5D4DD"
let g:terminal_color_8 = "#608b4e"
let g:terminal_color_9 = "#F2C38F"
let g:terminal_color_10 = "#A8CE93"
let g:terminal_color_11 = "#DADA93"
let g:terminal_color_12 = "#83AFE5"
let g:terminal_color_13 = "#D18EC2"
let g:terminal_color_14 = "#83AFE5"
let g:terminal_color_15 = "#E6EEF3"

" FZF
let g:fzf_colors = {
      \ "fg":      ["fg", "Normal"],
      \ "none":      ["none", "Normal"],
      \ "hl":      ["fg", "Conditional"],
      \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
      \ "none+":     ["none", "CursorLine", "CursorColumn"],
      \ "hl+":     ["fg", "Conditional"],
      \ "info":    ["fg", "Conditional"],
      \ "border":  ["fg", "Ignore"],
      \ "prompt":  ["fg", "Comment"],
      \ "pointer": ["fg", "Conditional"],
      \ "marker":  ["fg", "Conditional"],
      \ "spinner": ["fg", "Conditional"],
      \ "header":  ["fg", "Conditional"]
      \}
silent! call vsd#extras()
finish

" Background: dark
" Color:	    foreground	 #cccccc ~
" Color:	    background	 #262626 ~
" Color:	    selection	 #393939 ~
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
" EndOfBuffer			window	        none
" LineNr				window	        none
" NonText				selection	none
" Search				background	special
" IncSearch			red		special bold
" TabLine				window		fg reverse
" TabLineFill			window		fg reverse
" StatusLine			window		yellow reverse
" StatusLineNC			window		fg reverse
" StatusLineTerm			window		yellow reverse
" StatusLineTermNC		window		fg reverse
" VertSplit			background	window
" Visual				none		selection
" VisualNOS			none		selection
" Directory			blue		none
" ModeMsg				green		none
" MoreMsg				green		none
" Question			green		none
" WarningMsg			red		none
" MatchParen			red		window bold
" Folded				comment		none
" FoldColumn			fg		none
" CursorLine			none		selection
" CursorLineNr			yellow		none
" CursorColumn			fg		selection
" SignColumn			fg		none
" ColorColumn			fg		selection
" Comment				comment		none
" Todo				comment		none
" Title				comment		none
" Constant			orange		none
" String				green		none
" Identifier			fg		none italic
" Function			blue		none
" Statement			purple		none
" Conditional			blue		none
" Repeat				blue		none
" Operator			aqua		none
" Keyword				orange		none
" Type				yellow		none
" Structure			yellow		none
" Special				special		none
" SpecialKey			special	        none
" PreProc				purple		none
" Define				purple		none
" Include				purple		none
" SpellBad			red   		none undercurl
" SpellCap			orange		none undercurl
" SpellLocal			orange		none undercurl
" SpellRare			purple 		none undercurl
" Pmenu				fg		selection
" PmenuSel			fg		selection reverse
" PmenuSbar			background	background
" PmenuThumb			purple		purple
" DiffAdd				fg		selection
" DiffDelete			none		red
" DiffChange			fg		blue
" DiffText			selection	blue
" Cursor				background	green
" QuickFixLine		->	Search
" Delimiter		->	Special
" Underlined			blue		none underline
" diffAdded			green		none
" diffRemoved			red		none
" gitcommitSummary		fg		none bold
" Command				red		none
" Error				red		none
" ErrorMsg			red		none
" Conceal			->	Comment
" Ignore			->	Comment
" GitGutterAdd			green		none
" GitGutterChange			special		none
" GitGutterChangeDelete		special		none
" GitGutterDelete			red		none
" SignifySignAdd			green		none
" SignifySignChange		special		none
" SignifySignChangeDelete		special		none
" SignifySignDelete		red		none
" vimDocstring		->	String
" vimEndBlock   		->	Conditional
" vimConditional		->	Conditional
" vimRepeat		->	Conditional
" vimCommand			red   		none
" vimLet				lightgrey	none
" vimCall				lightgrey	none
" vimSelf				special		none italic
" vimUserFunc			foreground	none
" helpCommand		->	Type
" helpSectionDelim	->	PreProc
" HelpHeadline		->	Statement
" pythonSelf		->	Identifier
" pythonOperatorSymbol	->	Operator
" pythonBraces		->	Special
" pythonGlobalVar		orange	none
" pythonStringType	->	Statement
" pythonOperator		->	Statement
" pythonBoolean		->	Command
" pythonNone		->	Command
" pythonStructure		->	Keyword
" pythonStorageClass	->	Keyword
" pythonTypeDef		->	Keyword
" pythonFunction			red   		none
" pythonBuiltinFunc    	->	Structure
" mkdItalic			purple		none
" mkdBold				purple		none
" mkdBoldItalic			purple		none
" mkdListItem			special		none
" mkdID				purple		none
" mkdRule				purple		none
" cppStructure			purple		none
" cStorageClass			red		none
" cCharacter		->	String
" cppOperatorSymbol	->	Operator
